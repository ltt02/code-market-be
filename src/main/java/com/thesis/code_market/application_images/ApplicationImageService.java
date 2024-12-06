package com.thesis.code_market.application_images;

import com.thesis.code_market.application.Application;
import com.thesis.integration.minio.MinioChannel;
import net.coobird.thumbnailator.Thumbnails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;

@Service
public class ApplicationImageService {

    @Autowired
    private ApplicationImageRepository applicationImageRepository;

    @Autowired
    private MinioChannel minioChannel;

    public ApplicationImage save(ApplicationImage applicationImage) {
        return this.applicationImageRepository.save(applicationImage);
    }

    public List<ApplicationImageDTO> findAll() {
        List<ApplicationImage> images = this.applicationImageRepository.findAll();
        return images.stream().map(ApplicationImageDTO::new).toList();
    }

    public List<ApplicationImage> findAllNotDTOByApplicationId(Long id) {
        List<ApplicationImage> images = this.applicationImageRepository.findAllByApplicationId(id);
        return images;
    }

    public List<ApplicationImageDTO> findAllByApplicationId(Long id) {
        List<ApplicationImage> images = this.applicationImageRepository.findAllByApplicationId(id);
        return images.stream().map(ApplicationImageDTO::new).toList();
    }

    public ApplicationImageDTO save(Application application, ApplicationImageDTO applicationImageDTO) {
        ApplicationImage applicationImage = new ApplicationImage(applicationImageDTO);
        applicationImage.setApplication(application);
        return new ApplicationImageDTO(applicationImageRepository.save(applicationImage));
    }

    public String upload(MultipartFile file) {
        return minioChannel.upload(file, "application/");
    }

    public byte[] resizeImage(byte[] originalImage, int width, int height) throws IOException {
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        Thumbnails.of(new ByteArrayInputStream(originalImage))
                .size(width, height)
                .toOutputStream(outputStream);
        return outputStream.toByteArray();
    }

    public Resource getResizedImageAsResource(byte[] resizedImage) {
        return new InputStreamResource(new ByteArrayInputStream(resizedImage));
    }

    public String generateResizedImageLink(String originalLink, int width, int height) {
        // Assuming the link format supports resizing via query params or paths
        if (originalLink.startsWith("http://") || originalLink.startsWith("https://")) {
            return originalLink + "?width=" + width + "&height=" + height;
        }
        // If stored locally, generate a resized path (you'll need to ensure this resizing happens)
        return "/resized-images/" + width + "x" + height + "/" + originalLink;
    }
}
