// To parse this JSON data, do
//
//     final continentes = continentesFromJson(jsonString);

import 'dart:convert';

List<Continentes> continentesFromJson(String str) => List<Continentes>.from(json.decode(str).map((x) => Continentes.fromJson(x)));

String continentesToJson(List<Continentes> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Continentes {
  Continentes({
    this.updated,
    this.cases,
    this.todayCases,
    this.deaths,
    this.todayDeaths,
    this.recovered,
    this.todayRecovered,
    this.active,
    this.critical,
    this.casesPerOneMillion,
    this.deathsPerOneMillion,
    this.tests,
    this.testsPerOneMillion,
    this.population,
    this.continent,
    this.activePerOneMillion,
    this.recoveredPerOneMillion,
    this.criticalPerOneMillion,
    this.continentInfo,
    this.countries,
  });

  int updated;
  int cases;
  int todayCases;
  int deaths;
  int todayDeaths;
  int recovered;
  int todayRecovered;
  int active;
  int critical;
  double casesPerOneMillion;
  double deathsPerOneMillion;
  int tests;
  double testsPerOneMillion;
  int population;
  String continent;
  double activePerOneMillion;
  double recoveredPerOneMillion;
  double criticalPerOneMillion;
  ContinentInfo continentInfo;
  List<String> countries;

  factory Continentes.fromJson(Map<String, dynamic> json) => Continentes(
    updated: json["updated"],
    cases: json["cases"],
    todayCases: json["todayCases"],
    deaths: json["deaths"],
    todayDeaths: json["todayDeaths"],
    recovered: json["recovered"],
    todayRecovered: json["todayRecovered"],
    active: json["active"],
    critical: json["critical"],
    casesPerOneMillion: json["casesPerOneMillion"].toDouble(),
    deathsPerOneMillion: json["deathsPerOneMillion"].toDouble(),
    tests: json["tests"],
    testsPerOneMillion: json["testsPerOneMillion"].toDouble(),
    population: json["population"],
    continent: json["continent"],
    activePerOneMillion: json["activePerOneMillion"].toDouble(),
    recoveredPerOneMillion: json["recoveredPerOneMillion"].toDouble(),
    criticalPerOneMillion: json["criticalPerOneMillion"].toDouble(),
    continentInfo: ContinentInfo.fromJson(json["continentInfo"]),
    countries: List<String>.from(json["countries"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "updated": updated,
    "cases": cases,
    "todayCases": todayCases,
    "deaths": deaths,
    "todayDeaths": todayDeaths,
    "recovered": recovered,
    "todayRecovered": todayRecovered,
    "active": active,
    "critical": critical,
    "casesPerOneMillion": casesPerOneMillion,
    "deathsPerOneMillion": deathsPerOneMillion,
    "tests": tests,
    "testsPerOneMillion": testsPerOneMillion,
    "population": population,
    "continent": continent,
    "activePerOneMillion": activePerOneMillion,
    "recoveredPerOneMillion": recoveredPerOneMillion,
    "criticalPerOneMillion": criticalPerOneMillion,
    "continentInfo": continentInfo.toJson(),
    "countries": List<dynamic>.from(countries.map((x) => x)),
  };
}

class ContinentInfo {
  ContinentInfo({
    this.lat,
    this.long,
  });

  double lat;
  double long;

  factory ContinentInfo.fromJson(Map<String, dynamic> json) => ContinentInfo(
    lat: json["lat"].toDouble(),
    long: json["long"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "lat": lat,
    "long": long,
  };
}
