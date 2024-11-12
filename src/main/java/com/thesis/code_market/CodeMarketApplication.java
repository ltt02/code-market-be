package com.thesis.code_market;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = {"com.thesis.integration.minio", "com.thesis.code_market"})
public class CodeMarketApplication {

	public static void main(String[] args) {
		SpringApplication.run(CodeMarketApplication.class, args);
	}

}
