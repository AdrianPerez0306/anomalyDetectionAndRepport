package com.anomaly_repport.entrypoint_service.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class EntryPointController {
    
    @Autowired
    private KafkaTemplate<String, Integer> template;

    @GetMapping("/process/data/{data}")
    public String processData(@PathVariable int data){
        this.template.send("anomaly-topic", data);
        return "entrypoint-service sended to Anomaly Detector Service data: " + data;
    }
}
