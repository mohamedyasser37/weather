/// text : "Partly cloudy"
/// icon : "//cdn.weatherapi.com/weather/64x64/day/116.png"
/// code : 1003

class Condition {
  Condition({
      this.text, 
      this.icon, 
      this.code,});

  Condition.fromJson(dynamic json) {
    text = json['text'];
    icon = json['icon'];
    code = json['code'];
  }
  String? text;
  String? icon;
  num? code;
Condition copyWith({  String? text,
  String? icon,
  num? code,
}) => Condition(  text: text ?? this.text,
  icon: icon ?? this.icon,
  code: code ?? this.code,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = text;
    map['icon'] = icon;
    map['code'] = code;
    return map;
  }

}