package com.tcs;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

public enum ApplicationProperties {
    INSTANCE;

    private final Properties properties;

    ApplicationProperties() {
        properties = new Properties();
        try {
            properties.load(getClass().getClassLoader().getResourceAsStream("application.properties"));
        } catch (IOException e) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, e.getMessage(), e);
        }
    }

    public String getHostsFilePath() {
        return properties.getProperty("ANSIBLE_HOSTS_FILE_PATH");
    }
    public String getPlayBooksFolder() {
        return properties.getProperty("ANSIBLE_PLAYBOOKS_FOLDER");
    }
	  public String getPipelineURL() {
        return properties.getProperty("PIPELINE_URL");
    }
	  public String getMonitoringURL() {
        return properties.getProperty("MONITORING_URL");
    }
	


    
}