interface ZoneApiResponse {
  id: number;
  restrictionType: string;
  coordinate: {
    latitude: number;
    longitude: number;
  }[];
}

export default ZoneApiResponse;