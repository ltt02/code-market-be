package com.thesis.code_market.application_platform;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ApplicationPlatformService {

    @Autowired
    private ApplicationPlatformRepository applicationPlatformRepository;

    public List<ApplicationPlatformDTO> findAll() {
        List<ApplicationPlatform> typeList = this.applicationPlatformRepository.findAll();
        return typeList.stream().map(ApplicationPlatformDTO::new).toList();
    }
}
