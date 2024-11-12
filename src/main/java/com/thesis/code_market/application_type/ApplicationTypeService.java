package com.thesis.code_market.application_type;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ApplicationTypeService {

    @Autowired
    private ApplicationTypeRepository applicationTypeRepository;

    public List<ApplicationTypeDTO> findAll() {
        List<ApplicationType> typeList = this.applicationTypeRepository.findAll();
        return typeList.stream().map(ApplicationTypeDTO::new).toList();
    }
}
