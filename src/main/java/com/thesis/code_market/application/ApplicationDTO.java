package com.thesis.code_market.application;

import com.thesis.code_market.application_category.ApplicationCategoryDTO;
import com.thesis.code_market.application_framework.ApplicationFrameworkDTO;
import com.thesis.code_market.application_images.ApplicationImageDTO;
import com.thesis.code_market.application_images.ApplicationImageService;
import com.thesis.code_market.application_platform.ApplicationPlatformDTO;
import com.thesis.code_market.application_type.ApplicationTypeDTO;
import lombok.*;

import java.math.BigDecimal;
import java.util.List;
import java.util.stream.Collectors;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class ApplicationDTO {
    private Long id;
    private String name;
    private ApplicationTypeDTO applicationType;
    private String description;
    private BigDecimal price;
    private BigDecimal storageCapacity;
    private String images;
    private Double ratings;
    private Long downloads;
    private List<ApplicationCategoryDTO> applicationCategoryList;
    private List<ApplicationFrameworkDTO> applicationFrameworkList;
    private List<ApplicationPlatformDTO> applicationPlatformList;
    private Long authorId;
    private Integer status;
    private String sourceCode;
    private List<ApplicationImageDTO> applicationImages;
    private List<ApplicationImageDTO> applicationImagesResized;

    public ApplicationDTO(Application application, ApplicationImageService imageService) {
        this.id = application.getId();
        this.name = application.getName();
        this.applicationType = new ApplicationTypeDTO(application.getApplicationType());
        this.description = application.getDescription();
        this.price = application.getPrice();
        this.storageCapacity = application.getStorageCapacity();
        this.images = application.getImages();
        this.ratings = application.getRatings();
        this.downloads = application.getDownloads();
        this.applicationCategoryList = application.getApplicationCategoryList().stream().map(ApplicationCategoryDTO::new).collect(Collectors.toList());
        this.applicationFrameworkList = application.getApplicationFrameworkList().stream().map(ApplicationFrameworkDTO::new).collect(Collectors.toList());
        this.applicationPlatformList = application.getApplicationPlatformList().stream().map(ApplicationPlatformDTO::new).collect(Collectors.toList());
        this.status = application.getStatus();
        this.authorId = application.getDeveloper().getId();
        this.sourceCode = application.getSourceCode();
        this.applicationImages = application.getApplicationImages().stream().map(ApplicationImageDTO::new).collect(Collectors.toList());
        this.applicationImagesResized = application.getApplicationImages().stream().map(image -> {
            String resizedLink = imageService.generateResizedImageLink(image.getLink(), 150, 150);
            return new ApplicationImageDTO(image.getId(), resizedLink);
        }).collect(Collectors.toList());
    }

    public ApplicationDTO(Application application) {
        this.id = application.getId();
        this.name = application.getName();
        this.applicationType = new ApplicationTypeDTO(application.getApplicationType());
        this.description = application.getDescription();
        this.price = application.getPrice();
        this.storageCapacity = application.getStorageCapacity();
        this.images = application.getImages();
        this.ratings = application.getRatings();
        this.downloads = application.getDownloads();
        this.applicationCategoryList = application.getApplicationCategoryList().stream().map(ApplicationCategoryDTO::new).collect(Collectors.toList());
        this.applicationFrameworkList = application.getApplicationFrameworkList().stream().map(ApplicationFrameworkDTO::new).collect(Collectors.toList());
        this.applicationPlatformList = application.getApplicationPlatformList().stream().map(ApplicationPlatformDTO::new).collect(Collectors.toList());
        this.status = application.getStatus();
        this.authorId = application.getDeveloper().getId();
        this.sourceCode = application.getSourceCode();
        this.applicationImages = application.getApplicationImages().stream().map(ApplicationImageDTO::new).collect(Collectors.toList());
    }
}
