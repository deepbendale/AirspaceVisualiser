package com.airspace.Repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.airspace.Entity.ZoneCoordinate;

import java.util.List;

@Repository
public interface ZoneCoordinateRepository extends JpaRepository<ZoneCoordinate, Long> {

    // Custom query to get coordinates by Zone ID (if needed)
    List<ZoneCoordinate> findByZoneId(Long zoneId);
}
