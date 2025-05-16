package com.airspace.mapper;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Component;

import com.airspace.Dto.ZoneCoordinateDto;
import com.airspace.Dto.ZoneDto;
import com.airspace.Entity.Zone;
import com.airspace.Entity.ZoneCoordinate;

@Component
public class ZoneMapper {

    public ZoneDto toDto(Zone zone) {
        ZoneDto dto = new ZoneDto();
        dto.setId(zone.getId());
        dto.setCreatedAt(zone.getCreatedAt());
        dto.setRestrictionType(zone.getRestrictionType().toString());
        dto.setCoordinate(toCoordinateDtoList(zone.getCoordinates()));
        return dto;
    }

    private List<ZoneCoordinateDto> toCoordinateDtoList(List<ZoneCoordinate> coordinates) {
        return coordinates.stream().map(coord -> {
            ZoneCoordinateDto dto = new ZoneCoordinateDto();
            dto.setId(coord.getId());
            dto.setLatitude(coord.getLocation().getY());
            dto.setLongitude(coord.getLocation().getX());
            return dto;
        }).collect(Collectors.toList());
    }
}
