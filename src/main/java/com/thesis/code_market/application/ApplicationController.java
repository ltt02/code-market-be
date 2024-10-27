package com.thesis.code_market.application;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;

@CrossOrigin(origins = "http://localhost:8081")
@RestController
@RequestMapping("/applications")
public class ApplicationController {

    @Autowired
    ApplicationService applicationService;

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

    @GetMapping("/{id}")
    public ResponseEntity<?> getApplicationById(@PathVariable Long id) {
        Application application = this.applicationService.findApplicationById(id);
        if (application == null) {
            return new ResponseEntity<>("This application is not exist", HttpStatus.NOT_FOUND);
        }
        ApplicationDTO applicationDTO = new ApplicationDTO(application);
        return new ResponseEntity<>(applicationDTO, HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<Application> addApplication(@RequestBody Application application) {
        this.applicationService.addApplication(application);
        return new ResponseEntity<>(application, HttpStatus.CREATED);
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