package com.thesis.code_market.application;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class ApplicationResponseDTO {
    private List<ApplicationDTO> allApplications;
    private List<ApplicationDTO> newApplications;
    private List<ApplicationDTO> mostDownloadedApplications;
    private List<ApplicationDTO> mostSaleApplications;

    public ApplicationResponseDTO(List<ApplicationDTO> allApplications, List<ApplicationDTO> newApplications,
                                  List<ApplicationDTO> mostDownloadedApplications, List<ApplicationDTO> mostSaleApplications) {
        this.allApplications = allApplications;
        this.newApplications = newApplications;
        this.mostDownloadedApplications = mostDownloadedApplications;
        this.mostSaleApplications = mostSaleApplications;
    }
}