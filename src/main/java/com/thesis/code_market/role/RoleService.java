package com.thesis.code_market.role;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleService {

    @Autowired
    private RoleRepository roleRepository;

    @Autowired
    private ModelMapper modelMapper;

    public List<RoleDTO> findAll() {
        List<Role> roles = this.roleRepository.findAll();
        return roles.stream().map(RoleDTO::new).toList();
    }

    @SuppressWarnings("null")
    public RoleDTO findById(Long id) {
        Role role = roleRepository.findById(id).orElse(null);
        if (role != null) {return modelMapper.map(role, RoleDTO.class);
        }
        return null;
    }

    public Role findByName(String name) {
        return this.roleRepository.findByName(name).orElse(null);
    }

    public void add(Role role) {
        if (this.findById(role.getId()) == null) {
            this.roleRepository.save(role);
        }
    }

    @SuppressWarnings("null")
    public void deleteById(Long id) {
        this.roleRepository.deleteById(id);
    }
}
