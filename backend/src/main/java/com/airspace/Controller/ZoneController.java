package com.airspace.Controller;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.airspace.Dto.AddZoneRequestDto;
import com.airspace.Dto.ZoneDto;
import com.airspace.Entity.Zone;
import com.airspace.Service.ZoneService;
import com.airspace.mapper.ZoneMapper;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/zone")
@RequiredArgsConstructor
@CrossOrigin(origins = "http://localhost:5173")

public class ZoneController {

    @Autowired
    ZoneService zoneService;

    @Autowired
    ZoneMapper zoneMapper;

    @PostMapping("/add")
    public ResponseEntity<ZoneDto> addZone(@RequestBody AddZoneRequestDto request) {
        Zone createdZone = zoneService.addZone(request);
        ZoneDto createdZoneDto = zoneMapper.toDto(createdZone);
        return ResponseEntity.ok(createdZoneDto);
    }

    @GetMapping("/all")
    public ResponseEntity<List<ZoneDto>> getAllZones() {
        List<Zone> zones = zoneService.getAllZones();
        List<ZoneDto> zoneDtos = zones.stream()
                .map(zoneMapper::toDto)
                .collect(Collectors.toList());
        return ResponseEntity.ok(zoneDtos);
    }
}
