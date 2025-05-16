package com.airspace.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.airspace.Entity.ZoneCoordinate;

@Repository
public interface ZoneCoordinateRepository extends JpaRepository<ZoneCoordinate, Long> {

    List<ZoneCoordinate> findByZoneId(Long zoneId);
}
