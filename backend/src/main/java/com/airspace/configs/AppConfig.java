package com.airspace.configs;

import org.locationtech.jts.geom.GeometryFactory;
import org.locationtech.jts.geom.PrecisionModel;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AppConfig {

    @Bean
    GeometryFactory geometryFactory() {
        // Using SRID 4326 (WGS84) which is standard for GPS coordinates
        return new GeometryFactory(new PrecisionModel(), 4326);
    }
}
