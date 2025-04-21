import 'dart:convert';
Countries countriesFromJson(String str) => Countries.fromJson(json.decode(str));
String countriesToJson(Countries data) => json.encode(data.toJson());

class Countries {
  List<dynamic> colorsName;
  List<dynamic> countriesName;

  Countries({
    required this.colorsName,
    required this.countriesName,
  });

  factory Countries.fromJson(Map<String, dynamic> json) => Countries(
    colorsName: List<dynamic>.from(json["colors_name"].map((x) => x)),
    countriesName: List<dynamic>.from(json["countries_name"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "colors_name": List<dynamic>.from(colorsName.map((x) => x)),
    "countries_name": List<dynamic>.from(countriesName.map((x) => x)),
  };
}
