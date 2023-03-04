import 'Condition.dart';

/// last_updated_epoch : 1677689100
/// last_updated : "2023-03-01 16:45"
/// temp_c : 8.0
/// temp_f : 46.4
/// is_day : 1
/// condition : {"text":"Partly cloudy","icon":"//cdn.weatherapi.com/weather/64x64/day/116.png","code":1003}
/// wind_mph : 8.1
/// wind_kph : 13.0
/// wind_degree : 30
/// wind_dir : "NNE"
/// pressure_mb : 1026.0
/// pressure_in : 30.3
/// precip_mm : 0.0
/// precip_in : 0.0
/// humidity : 66
/// cloud : 75
/// feelslike_c : 5.6
/// feelslike_f : 42.1
/// vis_km : 10.0
/// vis_miles : 6.0
/// uv : 2.0
/// gust_mph : 10.5
/// gust_kph : 16.9

class Current {
  Current({
      this.lastUpdatedEpoch, 
      this.lastUpdated, 
      this.tempC, 
      this.tempF, 
      this.isDay, 
      this.condition, 
      this.windMph, 
      this.windKph, 
      this.windDegree, 
      this.windDir, 
      this.pressureMb, 
      this.pressureIn, 
      this.precipMm, 
      this.precipIn, 
      this.humidity, 
      this.cloud, 
      this.feelslikeC, 
      this.feelslikeF, 
      this.visKm, 
      this.visMiles, 
      this.uv, 
      this.gustMph, 
      this.gustKph,});

  Current.fromJson(dynamic json) {
    lastUpdatedEpoch = json['last_updated_epoch'];
    lastUpdated = json['last_updated'];
    tempC = json['temp_c'];
    tempF = json['temp_f'];
    isDay = json['is_day'];
    condition = json['condition'] != null ? Condition.fromJson(json['condition']) : null;
    windMph = json['wind_mph'];
    windKph = json['wind_kph'];
    windDegree = json['wind_degree'];
    windDir = json['wind_dir'];
    pressureMb = json['pressure_mb'];
    pressureIn = json['pressure_in'];
    precipMm = json['precip_mm'];
    precipIn = json['precip_in'];
    humidity = json['humidity'];
    cloud = json['cloud'];
    feelslikeC = json['feelslike_c'];
    feelslikeF = json['feelslike_f'];
    visKm = json['vis_km'];
    visMiles = json['vis_miles'];
    uv = json['uv'];
    gustMph = json['gust_mph'];
    gustKph = json['gust_kph'];
  }
  num? lastUpdatedEpoch;
  String? lastUpdated;
  num? tempC;
  num? tempF;
  num? isDay;
  Condition? condition;
  num? windMph;
  num? windKph;
  num? windDegree;
  String? windDir;
  num? pressureMb;
  num? pressureIn;
  num? precipMm;
  num? precipIn;
  num? humidity;
  num? cloud;
  num? feelslikeC;
  num? feelslikeF;
  num? visKm;
  num? visMiles;
  num? uv;
  num? gustMph;
  num? gustKph;
Current copyWith({  num? lastUpdatedEpoch,
  String? lastUpdated,
  num? tempC,
  num? tempF,
  num? isDay,
  Condition? condition,
  num? windMph,
  num? windKph,
  num? windDegree,
  String? windDir,
  num? pressureMb,
  num? pressureIn,
  num? precipMm,
  num? precipIn,
  num? humidity,
  num? cloud,
  num? feelslikeC,
  num? feelslikeF,
  num? visKm,
  num? visMiles,
  num? uv,
  num? gustMph,
  num? gustKph,
}) => Current(  lastUpdatedEpoch: lastUpdatedEpoch ?? this.lastUpdatedEpoch,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  tempC: tempC ?? this.tempC,
  tempF: tempF ?? this.tempF,
  isDay: isDay ?? this.isDay,
  condition: condition ?? this.condition,
  windMph: windMph ?? this.windMph,
  windKph: windKph ?? this.windKph,
  windDegree: windDegree ?? this.windDegree,
  windDir: windDir ?? this.windDir,
  pressureMb: pressureMb ?? this.pressureMb,
  pressureIn: pressureIn ?? this.pressureIn,
  precipMm: precipMm ?? this.precipMm,
  precipIn: precipIn ?? this.precipIn,
  humidity: humidity ?? this.humidity,
  cloud: cloud ?? this.cloud,
  feelslikeC: feelslikeC ?? this.feelslikeC,
  feelslikeF: feelslikeF ?? this.feelslikeF,
  visKm: visKm ?? this.visKm,
  visMiles: visMiles ?? this.visMiles,
  uv: uv ?? this.uv,
  gustMph: gustMph ?? this.gustMph,
  gustKph: gustKph ?? this.gustKph,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['last_updated_epoch'] = lastUpdatedEpoch;
    map['last_updated'] = lastUpdated;
    map['temp_c'] = tempC;
    map['temp_f'] = tempF;
    map['is_day'] = isDay;
    if (condition != null) {
      map['condition'] = condition?.toJson();
    }
    map['wind_mph'] = windMph;
    map['wind_kph'] = windKph;
    map['wind_degree'] = windDegree;
    map['wind_dir'] = windDir;
    map['pressure_mb'] = pressureMb;
    map['pressure_in'] = pressureIn;
    map['precip_mm'] = precipMm;
    map['precip_in'] = precipIn;
    map['humidity'] = humidity;
    map['cloud'] = cloud;
    map['feelslike_c'] = feelslikeC;
    map['feelslike_f'] = feelslikeF;
    map['vis_km'] = visKm;
    map['vis_miles'] = visMiles;
    map['uv'] = uv;
    map['gust_mph'] = gustMph;
    map['gust_kph'] = gustKph;
    return map;
  }

}