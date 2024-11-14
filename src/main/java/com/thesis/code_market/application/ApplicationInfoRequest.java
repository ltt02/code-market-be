package com.thesis.code_market.application;

import com.thesis.code_market.application_category.ApplicationCategoryDTO;
import com.thesis.code_market.application_framework.ApplicationFrameworkDTO;
import com.thesis.code_market.application_platform.ApplicationPlatformDTO;
import com.thesis.code_market.application_type.ApplicationTypeDTO;
import lombok.AllArgsConstructor;
import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

import java.math.BigDecimal;
import java.util.List;

@Data
@AllArgsConstructor
public class ApplicationInfoRequest {
    private String name;
    private BigDecimal price;
    private BigDecimal storageCapacity;
    private List<ApplicationCategoryDTO> applicationCategoryList;
    private List<ApplicationFrameworkDTO> applicationFrameworkList;
    private List<ApplicationPlatformDTO> applicationPlatformList;
    private ApplicationTypeDTO applicationType;
    private String description;
    private MultipartFile sourceCode;
    private List<MultipartFile> images;
    private Long authorId;
}
