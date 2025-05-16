package com.airspace.Dto;

import java.time.LocalDateTime;
import java.util.List;

import lombok.Data;

@Data
public class ZoneDto {

    private Long id;
    private String restrictionType;
    private LocalDateTime createdAt;
    private List<ZoneCoordinateDto> coordinate;
}
