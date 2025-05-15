package com.airspace.Service;
import java.util.List;

import com.airspace.Dto.AddZoneRequestDto;
import com.airspace.Entity.Zone;


public interface ZoneService {
   
    Zone addZone( AddZoneRequestDto request);
    List<Zone> getAllZones();

}
