package com.airspace.Dto;

import java.util.List;

import com.airspace.Entity.Enum.RestrictedType;

import lombok.Data;

@Data
public class AddZoneRequestDto {

    private RestrictedType restrictionType;
    private List<LatLongDto> coordinates;
}
