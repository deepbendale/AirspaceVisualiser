package com.airspace.Dto;


import lombok.Data;
import java.util.List;

import com.airspace.Entity.Enum.RestrictedType;

@Data
public class AddZoneRequestDto {
    private RestrictedType restrictionType;
    private List<LatLongDto> coordinates;
}
