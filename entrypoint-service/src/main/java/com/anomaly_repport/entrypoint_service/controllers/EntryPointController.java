package com.anomaly_repport.entrypoint_service.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class EntryPointController {
    
    @GetMapping("/mock")
    public String mock(){
        return "entrypoint-service";
    }
}
