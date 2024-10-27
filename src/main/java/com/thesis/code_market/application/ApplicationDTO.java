package com.thesis.code_market.application;

import com.thesis.code_market.application_category.ApplicationCategoryDTO;
import com.thesis.code_market.application_framework.ApplicationFrameworkDTO;
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
    private ApplicationType type;
    private String description;
    private BigDecimal price;
    private BigDecimal storageCapacity;
    private String images;
    private Double ratings;
    private Long downloads;
    private List<ApplicationCategoryDTO> applicationCategoryList;
    private ApplicationFrameworkDTO applicationFramework;
    private Long authorId;

    public ApplicationDTO(Application application) {
        this.id = application.getId();
        this.name = application.getName();
        this.type = application.getType();
        this.description = application.getDescription();
        this.price = application.getPrice();
        this.storageCapacity = application.getStorageCapacity();
        this.images = application.getImages();
        this.ratings = application.getRatings();
        this.downloads = application.getDownloads();
        this.applicationCategoryList = application.getApplicationCategoryList().stream().map(ApplicationCategoryDTO::new).collect(Collectors.toList());
        this.applicationFramework = new ApplicationFrameworkDTO(application.getApplicationFramework());
        this.authorId = application.getUser().getId();
    }
}
