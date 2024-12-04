package com.thesis.code_market.application;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.thesis.code_market.application_category.ApplicationCategoryDTO;
import com.thesis.code_market.application_framework.ApplicationFrameworkDTO;
import com.thesis.code_market.application_images.ApplicationImageService;
import com.thesis.code_market.application_platform.ApplicationPlatformDTO;
import com.thesis.code_market.application_type.ApplicationTypeDTO;
import com.thesis.code_market.review.ReviewDTO;
import com.thesis.code_market.review.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.math.BigDecimal;
import java.util.List;
import java.util.Objects;

@CrossOrigin(origins = "http://localhost:8081")
@RestController
@RequestMapping("/applications")
public class ApplicationController {

    @Autowired
    ApplicationService applicationService;

    @Autowired
    ApplicationImageService applicationImageService;

    @Autowired
    ReviewService reviewService;

    @GetMapping
    public ResponseEntity<?> getAllApplications() {
        List<ApplicationDTO> allApplications = this.applicationService.getAllApplications();
        List<ApplicationDTO> newApplications = this.applicationService.getTopNewApplications();
        List<ApplicationDTO> mostDownloadedApplications = this.applicationService.getMostDownloadedApplications();
        List<ApplicationDTO> mostSaleApplications = this.applicationService.getMostSaleApplication();
        ApplicationResponseDTO responseDTO = new ApplicationResponseDTO(allApplications, newApplications, mostDownloadedApplications, mostSaleApplications);
        if (Objects.isNull(responseDTO)) {
            return new ResponseEntity<>("The list is null", HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(responseDTO, HttpStatus.OK);
    }

    @GetMapping("/most-sale")
    public ResponseEntity<?> getMostSaleApplications() {
        List<ApplicationDTO> mostSaleApplications = this.applicationService.getMostDownloadedApplications();
        if (CollectionUtils.isEmpty(mostSaleApplications)) {
            return new ResponseEntity<>("The list is null", HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(mostSaleApplications, HttpStatus.OK);
    }

    @GetMapping("/group-by-type")
    public ResponseEntity<?> getApplicationsGroupByType() {
        ApplicationForChartDTO response = this.applicationService.getApplicationsGroupByType();
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @GetMapping("/developer/{developerId}")
    public ResponseEntity<?> getAllApplicationByDeveloperId(@PathVariable("developerId") Long developerId) {
        List<ApplicationDTO> response = this.applicationService.getAllApplicationByDeveloperId(developerId);
        if (Objects.isNull(response)) {
            return new ResponseEntity<>("The list is null", HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @GetMapping("/admin")
    public ResponseEntity<?> getAllApplicationByAdmin() {
        List<ApplicationDTO> response = this.applicationService.getAllApplications();
        if (Objects.isNull(response)) {
            return new ResponseEntity<>("The list is null", HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(response, HttpStatus.OK);
    }


    @GetMapping("/{id}")
    public ResponseEntity<?> getApplicationById(@PathVariable Long id) {
        Application application = this.applicationService.findApplicationById(id);
        if (application == null) {
            return new ResponseEntity<>("This application is not exist", HttpStatus.NOT_FOUND);
        }
        ApplicationDTO applicationDTO = new ApplicationDTO(application, applicationImageService);
        return new ResponseEntity<>(applicationDTO, HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<ApplicationDTO> addApplication(@RequestParam("name") String name,
                                                         @RequestParam("price") BigDecimal price,
                                                         @RequestParam("storageCapacity") BigDecimal storageCapacity,
                                                         @RequestParam("authorId") Long authorId,
                                                         @RequestParam("description") String description,
                                                         @RequestParam("applicationType") String applicationTypeJson,
                                                         @RequestParam("applicationCategoryList") String applicationCategoryListJson,
                                                         @RequestParam("applicationFrameworkList") String applicationFrameworkListJson,
                                                         @RequestParam("applicationPlatformList") String applicationPlatformListJson,
                                                         @RequestParam("sourceCode") MultipartFile sourceCode,
                                                         @RequestParam("images") List<MultipartFile> images) throws Exception {

        ObjectMapper objectMapper = new ObjectMapper();

        // Deserialize the JSON strings to DTOs
        ApplicationTypeDTO applicationType = objectMapper.readValue(applicationTypeJson, ApplicationTypeDTO.class);
        List<ApplicationCategoryDTO> applicationCategoryList = objectMapper.readValue(applicationCategoryListJson, new TypeReference<List<ApplicationCategoryDTO>>() {
        });
        List<ApplicationFrameworkDTO> applicationFrameworkList = objectMapper.readValue(applicationFrameworkListJson, new TypeReference<List<ApplicationFrameworkDTO>>() {
        });
        List<ApplicationPlatformDTO> applicationPlatformList = objectMapper.readValue(applicationPlatformListJson, new TypeReference<List<ApplicationPlatformDTO>>() {
        });

        ApplicationInfoRequest request = new ApplicationInfoRequest(
                name, price, storageCapacity, applicationCategoryList, applicationFrameworkList, applicationPlatformList, applicationType, description,
                sourceCode, images, authorId
        );
        ApplicationDTO response = this.applicationService.addApplication(request);
        return new ResponseEntity<>(response, HttpStatus.CREATED);
    }

    @GetMapping("/{id}/reviews")
    public ResponseEntity<?> getApplicationReviews(@PathVariable Long id) {
        List<ReviewDTO> reviews = this.reviewService.findAllByApplicationId(id);
        if (CollectionUtils.isEmpty(reviews)) {
            return new ResponseEntity<>("There is no reviews", HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(reviews, HttpStatus.OK);
    }

//    @PutMapping("/{id}")
//    public ResponseEntity<?> updateApplication(@PathVariable Long id, @RequestBody Application updatedApplicationInfo) {
//        Application existingApplication = this.applicationService.findApplicationById(id);
//        if (existingApplication == null) {
//            return new ResponseEntity<>("Can not find application to update", HttpStatus.NOT_FOUND);
//        }
//
//        Application updatedApplication = this.applicationService.updateApplication(id, updatedApplicationInfo);
//        return new ResponseEntity<>(updatedApplication, HttpStatus.OK);
//    }


    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteApplicationById(@PathVariable Long id) {
        Application application = this.applicationService.findApplicationById(id);
        if (application == null) {
            return new ResponseEntity<>("Can not find application to delete", HttpStatus.NOT_FOUND);
        }

        this.applicationService.deleteApplicationById(id);
        return new ResponseEntity<>("Deleted successfully", HttpStatus.OK);
    }

//    @GetMapping("/filtered/type")
//    public ResponseEntity<?> getAllFilteredApplicationsByTypes(@RequestParam ArrayList<ApplicationType> applicationTypes) {
//        if (applicationTypes == null || applicationTypes.isEmpty()) {
//            return new ResponseEntity<>("Application types parameter is required", HttpStatus.BAD_REQUEST);
//        }
//        ArrayList<Application> filteredApplications = this.applicationService.findApplicationByTypes(applicationTypes);
//        if (filteredApplications.size() < 1) {
//            return new ResponseEntity<>("Cannot find any application in types: { " + applicationTypes + " }",
//                    HttpStatus.NOT_FOUND);
//        }
//        return new ResponseEntity<>(filteredApplications, HttpStatus.OK);
//    }
}