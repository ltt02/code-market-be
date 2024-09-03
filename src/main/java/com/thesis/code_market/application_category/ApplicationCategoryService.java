package com.thesis.code_market.application_category;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ApplicationCategoryService {

    @Autowired
    private ApplicationCategoryRepository applicationCategoryRepository;

    @Autowired
    private ModelMapper modelMapper;

    public List<ApplicationCategoryDTO> findAll() {
        List<ApplicationCategory> roles = this.applicationCategoryRepository.findAll();
        return roles.stream().map(ApplicationCategoryDTO::new).toList();
    }

    @SuppressWarnings("null")
    public ApplicationCategoryDTO findById(Long id) {
        ApplicationCategory role = applicationCategoryRepository.findById(id).orElse(null);
        if (role != null) {return modelMapper.map(role, ApplicationCategoryDTO.class);
        }
        return null;
    }

    public ApplicationCategory findByName(String name) {
        return this.applicationCategoryRepository.findByName(name).orElse(null);
    }

    public void add(ApplicationCategory role) {
        if (this.findById(role.getId()) == null) {
            this.applicationCategoryRepository.save(role);
        }
    }

    @SuppressWarnings("null")
    public void deleteById(Long id) {
        this.applicationCategoryRepository.deleteById(id);
    }
}
