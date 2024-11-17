package com.thesis.code_market.application_images;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@RestController
@RequestMapping("/application-images")
public class ApplicationImageController {

    @Autowired
    ApplicationImageService applicationImageService;

    @GetMapping
    public List<ApplicationImageDTO> getAllImages() {
        return this.applicationImageService.findAll();
    }

//    @PostMapping("/application/{id}")
//    public List<ApplicationImageDTO> saveImage(@PathVariable long id) {
//        return this.applicationImageService.save();
//    }

    @GetMapping("/application/{id}")
    public List<ApplicationImageDTO> getAllImages(@PathVariable("id") Long id) {
        return this.applicationImageService.findAllByApplicationId(id);
    }

    @PostMapping("/application/upload")
    public String upload(@RequestParam MultipartFile file) {
        return this.applicationImageService.upload(file);
    }
}
