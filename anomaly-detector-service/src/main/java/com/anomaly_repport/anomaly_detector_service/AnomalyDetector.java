package com.anomaly_repport.anomaly_detector_service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.stereotype.Service;

@Service
public class AnomalyDetector {
    
    @Autowired
    private KafkaTemplate<String, Integer> template;

    @KafkaListener(topics = "anomaly-topic", groupId = "anomaly-detector-group")
    public void listenNewData(int data){
        System.out.println("NEW DATA RECEIVED: " + data);
    }
}
