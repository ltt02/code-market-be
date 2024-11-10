package com.thesis.code_market.properties;

import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Data
@Component
@ConfigurationProperties(
        prefix = "integration.minio",
        ignoreUnknownFields = false
)
@FieldDefaults(level = AccessLevel.PRIVATE)
public class MinioProperties {
    String accessKey;
    String secretKey;
    String url;
}