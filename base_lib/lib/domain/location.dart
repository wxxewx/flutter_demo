
class Location {
  final String province;
  final String city;
  final String area;
  final double longitude;
  final double latitude;

  Location(this.province, this.city, this.area, this.longitude, this.latitude);

  Location.Province_City_Area(province, city, area)
      : this(province, city, area, 0, 0);

  Location.Province_City(province, city) : this(province, city, "", 0, 0);

  Location.City(city) : this("", city, "", 0, 0);

  Location.Unknown() : this("未知", "未知", "未知", 0, 0);

  Location.Coordinate(longitude, latitude) : this("未知", "未知", "未知", longitude, latitude);


  @override
  String toString() {
    return 'Location{province: $province, city: $city, area: $area, longitude: $longitude, latitude: $latitude}';
  }
}