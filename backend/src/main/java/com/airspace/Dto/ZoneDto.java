package com.airspace.Dto;

import lombok.Data;
import java.time.LocalDateTime;
import java.util.List;

@Data

public class ZoneDto {
    private Long id;
    private String restrictionType;
    private LocalDateTime createdAt;
    private List <ZoneCoordinateDto> coordinate;
}
