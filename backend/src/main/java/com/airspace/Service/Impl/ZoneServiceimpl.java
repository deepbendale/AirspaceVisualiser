package com.airspace.Service.Impl;

import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

import org.locationtech.jts.geom.Coordinate;
import org.locationtech.jts.geom.GeometryFactory;
import org.locationtech.jts.geom.Point;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airspace.Dto.AddZoneRequestDto;
import com.airspace.Entity.Zone;
import com.airspace.Entity.ZoneCoordinate;
import com.airspace.Repository.ZoneCoordinateRepository;
import com.airspace.Repository.ZoneRepository;
import com.airspace.Service.ZoneService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ZoneServiceimpl implements ZoneService {

    @Autowired
    ZoneRepository zoneRepository;

    @Autowired
    ZoneCoordinateRepository zoneCoordinateRepository;

    @Autowired
    GeometryFactory geometryFactory;

    @Override
    public Zone addZone(AddZoneRequestDto request) {
        if (request == null || request.getCoordinates() == null || request.getCoordinates().isEmpty()) {
            throw new IllegalArgumentException("Zone or coordinates cannot be null or empty");
        }

        Zone zone = Zone.builder()
                .restrictionType(request.getRestrictionType())
                .createdAt(LocalDateTime.now())
                .build();

        Zone savedZone = zoneRepository.save(zone);

        List<ZoneCoordinate> coordinates = request.getCoordinates().stream()
                .map(coord -> {
                    Point point = geometryFactory
                            .createPoint(new Coordinate(coord.getLongitude(), coord.getLatitude()));
                    return ZoneCoordinate.builder()
                            .location(point)
                            .zone(savedZone)
                            .build();
                })
                .collect(Collectors.toList());

        zoneCoordinateRepository.saveAll(coordinates);

        savedZone.setCoordinates(coordinates);

        return savedZone;
    }

    @Override
    public List<Zone> getAllZones() {
        List<Zone> zones = zoneRepository.findAll();

        if (zones.isEmpty()) {
            throw new IllegalStateException("No zones found");
        }

        return zones;
    }
}
