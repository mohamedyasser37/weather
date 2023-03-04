import 'Location.dart';
import 'Current.dart';

/// location : {"name":"London","region":"City of London, Greater London","country":"United Kingdom","lat":51.52,"lon":-0.11,"tz_id":"Europe/London","localtime_epoch":1677689487,"localtime":"2023-03-01 16:51"}
/// current : {"last_updated_epoch":1677689100,"last_updated":"2023-03-01 16:45","temp_c":8.0,"temp_f":46.4,"is_day":1,"condition":{"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003},"wind_mph":8.1,"wind_kph":13.0,"wind_degree":30,"wind_dir":"NNE","pressure_mb":1026.0,"pressure_in":30.3,"precip_mm":0.0,"precip_in":0.0,"humidity":66,"cloud":75,"feelslike_c":5.6,"feelslike_f":42.1,"vis_km":10.0,"vis_miles":6.0,"uv":2.0,"gust_mph":10.5,"gust_kph":16.9}

class WeatherBody {
  WeatherBody({
      this.location, 
      this.current,});

  WeatherBody.fromJson(dynamic json) {
    location = json['location'] != null ? Location.fromJson(json['location']) : null;
    current = json['current'] != null ? Current.fromJson(json['current']) : null;
  }
  Location? location;
  Current? current;
WeatherBody copyWith({  Location? location,
  Current? current,
}) => WeatherBody(  location: location ?? this.location,
  current: current ?? this.current,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (location != null) {
      map['location'] = location?.toJson();
    }
    if (current != null) {
      map['current'] = current?.toJson();
    }
    return map;
  }

}