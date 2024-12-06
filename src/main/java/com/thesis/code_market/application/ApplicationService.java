package com.thesis.code_market.application;

import com.thesis.code_market.application_images.ApplicationImage;
import com.thesis.code_market.application_images.ApplicationImageDTO;
import com.thesis.code_market.application_images.ApplicationImageService;
import com.thesis.code_market.application_type.ApplicationTypeService;
import com.thesis.code_market.developer.DeveloperService;
import com.thesis.code_market.order.OrderDetail;
import com.thesis.code_market.order.OrderDetailRepository;
import com.thesis.integration.minio.MinioChannel;
import jakarta.transaction.Transactional;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Service
@Transactional
public class ApplicationService {

    @Autowired
    private ApplicationRepository applicationRepository;

    @Autowired
    private DeveloperService developerService;

    @Autowired
    private ApplicationImageService applicationImageService;

    @Autowired
    private ApplicationTypeService applicationTypeService;

    @Autowired
    private OrderDetailRepository orderDetailRepository;

    @Autowired
    private MinioChannel minioChannel;

    private static final Logger logger = LoggerFactory.getLogger(ApplicationService.class);

    @Transactional
    ApplicationDTO addApplication(ApplicationInfoRequest request) {
        ApplicationDTO applicationDto = new ApplicationDTO();
        applicationDto.setName(request.getName());
        applicationDto.setDescription(request.getDescription());
        applicationDto.setPrice(request.getPrice());
        applicationDto.setApplicationFrameworkList(request.getApplicationFrameworkList());
        applicationDto.setApplicationCategoryList(request.getApplicationCategoryList());
        applicationDto.setApplicationPlatformList(request.getApplicationPlatformList());
        applicationDto.setApplicationType(request.getApplicationType());
        applicationDto.setAuthorId(request.getAuthorId());
        applicationDto.setStatus(1);
        applicationDto.setDownloads(0L);
        applicationDto.setStorageCapacity(request.getStorageCapacity());
        Application application = Application.fromDTO(applicationDto);
        application.setDeveloper(developerService.findById(request.getAuthorId()));
        this.applicationRepository.save(application);
        application.setSourceCode(minioChannel.upload(request.getSourceCode(), "application/" + application.getId()));
        List<ApplicationImage> images = new ArrayList<>();
        for (MultipartFile img : request.getImages()) {
            ApplicationImageDTO image = this.applicationImageService.save(application, new ApplicationImageDTO(minioChannel.upload(img, "application/" + application.getId() + "/images")));
            images.add(new ApplicationImage(image));
        }
        application.setApplicationImages(images);
        return new ApplicationDTO(application);
    }

    List<ApplicationDTO> getAllApplications() {
        List<Application> applicationList = this.applicationRepository.findAll();
        return applicationList.stream().map(ApplicationDTO::new).toList();
    }

    public List<ApplicationDTO> getAllApplicationByDeveloperId(Long id) {
        List<Application> applicationList = this.applicationRepository.findAllByDeveloper_Id(id);
        return applicationList.stream().map(ApplicationDTO::new).toList();
    }

    List<ApplicationDTO> getTopNewApplications() {
        Pageable topTen = PageRequest.of(0, 10, Sort.by(Sort.Direction.DESC, "createdAt"));
        List<Application> applicationListNew = this.applicationRepository.findAllByOrderByCreatedAtDesc(topTen);
        return applicationListNew.stream().map(ApplicationDTO::new).toList();
    }

    List<ApplicationDTO> getMostDownloadedApplications() {
        Pageable topTen = PageRequest.of(0, 10, Sort.by(Sort.Direction.DESC, "downloads"));
        List<Application> applicationListMostDownloaded = this.applicationRepository.findAllByOrderByDownloadsDesc(topTen);
        return applicationListMostDownloaded.stream().map(ApplicationDTO::new).toList();
    }

    List<ApplicationDTO> getMostSaleApplication() {
        Pageable topTen = PageRequest.of(0, 10, Sort.by(Sort.Direction.ASC, "price"));
        List<Application> applicationListMostSale = this.applicationRepository.findAllByOrderByPriceAsc(topTen);
        return applicationListMostSale.stream().map(ApplicationDTO::new).toList();
    }

    public Application findApplicationById(Long id) {
        return this.applicationRepository.findById(id).orElse(null);
    }

    public Application updateApplication(Long id, Application applicationUpdateInfo) {
        Application existingApplication = this.applicationRepository.findById(id).orElse(null);

        if (existingApplication != null) {
            existingApplication.setName(applicationUpdateInfo.getName() != null ? applicationUpdateInfo.getName() : existingApplication.getName());
            existingApplication.setPrice(applicationUpdateInfo.getPrice() != null ? applicationUpdateInfo.getPrice() : existingApplication.getPrice());
            existingApplication.setApplicationType(applicationUpdateInfo.getApplicationType() != null ? applicationUpdateInfo.getApplicationType() : existingApplication.getApplicationType());
            existingApplication.setImages(applicationUpdateInfo.getImages() != null ? applicationUpdateInfo.getImages() : existingApplication.getImages());

            this.applicationRepository.save(existingApplication);
            return existingApplication;
        } else {
            return null;
        }
    }

    public List<Application> findApplicationsByIds(Object ids) {

        List<String> listOfIds = new ArrayList<String>(Arrays.asList(ids.toString().split(", ")));
        List<Long> result = listOfIds.stream().map(Long::parseLong).collect(Collectors.toList());

        return this.applicationRepository.findAllById(result);
    }

    void sendDeleteRequest(Long id) {
        Application application = this.applicationRepository.findById(id).orElse(null);
        application.setStatus(4);
        this.applicationRepository.save(application);
    }

    void sendUpdateRequest(Long id) {
        Application application = this.applicationRepository.findById(id).orElse(null);
        application.setStatus(1);
        this.applicationRepository.save(application);
    }

    void delete(Long id) {
        Application application = this.applicationRepository.findById(id).orElse(null);
        application.setStatus(5);
        this.applicationRepository.save(application);
    }

    void accept(Long id) {
        Application application = this.applicationRepository.findById(id).orElse(null);
        application.setStatus(2);
        this.applicationRepository.save(application);
    }

    void reject(Long id) {
        Application application = this.applicationRepository.findById(id).orElse(null);
        application.setStatus(3);
        this.applicationRepository.save(application);
    }

    void deleteApplicationById(Long id) {
        List<ApplicationImage> imageList = this.applicationImageService.findAllNotDTOByApplicationId(id);
        for (ApplicationImage image : imageList) {
            image.setApplication(null);
            this.applicationImageService.save(image);
        }

        List<OrderDetail> orderDetailList = this.orderDetailRepository.findAllByApplicationId(id);
        OrderDetail detail = new OrderDetail();
        for (OrderDetail orderDetail : orderDetailList) {
            orderDetail.setApplication(null);
            detail = this.orderDetailRepository.save(orderDetail);
        }

        this.applicationRepository.deleteById(id);
    }

    public ApplicationForChartDTO getApplicationsGroupByType() {
        List<ApplicationGroupByTypeDTO> dto = this.applicationRepository.findApplicationsGroupedByType();
        List<String> labels = dto.stream().map(ApplicationGroupByTypeDTO::getName).toList();
        List<Long> counts = dto.stream().map(ApplicationGroupByTypeDTO::getCount).toList();

        ApplicationForChartDTO result = new ApplicationForChartDTO();
        result.setLabels(labels);
        result.setCounts(counts);
        return result;
    }

//    public ArrayList<Application> findApplicationByTypes(ArrayList<ApplicationType> types) {
//        ArrayList<Application> filteredApplications = new ArrayList<Application>();
//        for (ApplicationType type : types) {
//            filteredApplications.addAll(this.applicationRepository.findApplicationsByType(type));
//        }
//        return filteredApplications;
//    }
}