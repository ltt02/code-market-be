package com.thesis.code_market.application;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.thesis.code_market.application_category.ApplicationCategory;
import com.thesis.code_market.application_framework.ApplicationFramework;
import com.thesis.code_market.application_platform.ApplicationPlatform;
import com.thesis.code_market.application_type.ApplicationType;
import com.thesis.code_market.developer.Developer;
import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

@Component
@Entity
@Data
@Table(name = "application")
@NoArgsConstructor
public class Application {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private Long id;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "developer_id")
    private Developer developer;

    @Column
    private String name;

    @Column(columnDefinition = "LONGTEXT")
    private String description;

    @Column(precision = 10, scale = 2)
    private BigDecimal price;

    @Column(precision = 10, scale = 2)
    private BigDecimal storageCapacity;

//    @Enumerated(EnumType.STRING)
//    private ApplicationType type;

    @Column(columnDefinition = "TEXT")
    private String images;

    @Column
    private Double ratings;

    @Column
    private Long downloads;

    @Column(name = "created_at")
    @Temporal(value = TemporalType.TIMESTAMP)
    @CreationTimestamp
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "Asia/Ho_Chi_Minh")
    private Date createdAt;

    @Column(name = "updated_at")
    @Temporal(value = TemporalType.TIMESTAMP)
    @UpdateTimestamp
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "Asia/Ho_Chi_Minh")
    private Date updatedAt;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "application_category_detail", joinColumns = @JoinColumn(name = "application_id", referencedColumnName = "id"), inverseJoinColumns = @JoinColumn(name = "application_category_id", referencedColumnName = "id"))
    private List<ApplicationCategory> applicationCategoryList;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "application_framework_detail", joinColumns = @JoinColumn(name = "application_id", referencedColumnName = "id"), inverseJoinColumns = @JoinColumn(name = "application_framework_id", referencedColumnName = "id"))
    private List<ApplicationFramework> applicationFrameworkList;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "application_platform_detail",
            joinColumns = @JoinColumn(name = "application_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "platform_id", referencedColumnName = "id"))
    private List<ApplicationPlatform> applicationPlatformList;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "type_id")
    private ApplicationType applicationType;

    public Application(Application application) {
        this.id = application.getId();
        this.name = application.getName();
        this.description = application.getDescription();
        this.price = application.getPrice();
        this.storageCapacity = application.getStorageCapacity();
        this.images = application.getImages();
        this.ratings = application.getRatings();
        this.downloads = application.getDownloads();
        this.createdAt = application.getCreatedAt();
        this.updatedAt = application.getUpdatedAt();
        this.applicationCategoryList = application.getApplicationCategoryList();
        this.applicationFrameworkList = application.getApplicationFrameworkList();
        this.applicationType = application.getApplicationType();
        this.applicationPlatformList = application.getApplicationPlatformList();
    }
}
