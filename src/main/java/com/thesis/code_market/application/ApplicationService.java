package com.thesis.code_market.application;

import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Service
@Transactional
public class ApplicationService {

    @Autowired
    private ApplicationRepository applicationRepository;

    void addApplication(Application application) {
        this.applicationRepository.save(application);
    }

    List<ApplicationDTO> getAllApplications() {
        List<Application> applicationList = this.applicationRepository.findAll();
        return applicationList.stream().map(ApplicationDTO::new).toList();
    }

    public Application findApplicationById(Long id) {
        return this.applicationRepository.findById(id).orElse(null);
    }

    public Application updateApplication(Long id, Application applicationUpdateInfo) {
        Application existingApplication = this.applicationRepository.findById(id).orElse(null);

        if (existingApplication != null) {
            existingApplication.setName(applicationUpdateInfo.getName() != null ? applicationUpdateInfo.getName() : existingApplication.getName());
            existingApplication.setPrice(applicationUpdateInfo.getPrice() != null ? applicationUpdateInfo.getPrice() : existingApplication.getPrice());
            existingApplication.setCost(applicationUpdateInfo.getCost() != null ? applicationUpdateInfo.getCost() : existingApplication.getCost());
            existingApplication.setSalePercent(applicationUpdateInfo.getSalePercent() >= 0 ? applicationUpdateInfo.getSalePercent() : existingApplication.getSalePercent());
            existingApplication.setType(applicationUpdateInfo.getType() != null ? applicationUpdateInfo.getType() : existingApplication.getType());
            existingApplication.setMaterial(applicationUpdateInfo.getMaterial() != null ? applicationUpdateInfo.getMaterial() : existingApplication.getMaterial());
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

    void deleteApplicationById(Long id) {
        this.applicationRepository.deleteById(id);
    }


    public ArrayList<Application> findApplicationByTypes(ArrayList<ApplicationType> types) {
        ArrayList<Application> filteredApplications = new ArrayList<Application>();
        for (ApplicationType type : types) {
            filteredApplications.addAll(this.applicationRepository.findApplicationsByType(type));
        }
        return filteredApplications;
    }
}