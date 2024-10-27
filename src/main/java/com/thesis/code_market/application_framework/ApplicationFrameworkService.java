package com.thesis.code_market.application_framework;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ApplicationFrameworkService {

    @Autowired
    private ApplicationFrameworkRepository applicationFrameworkRepository;

    public List<ApplicationFrameworkDTO> findAll() {
        List<ApplicationFramework> frameworkList = this.applicationFrameworkRepository.findAll();
        return frameworkList.stream().map(ApplicationFrameworkDTO::new).toList();
    }
}
