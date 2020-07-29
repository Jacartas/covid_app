

import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:http/http.dart' as http;

class GetCases {

  DailyReportsByCountryName dailyReports;

  Future<void> setupDailyCases() async{

    Map<String, String> _headers = {
      "x-rapidapi-host": "covid-19-data.p.rapidapi.com",
      "x-rapidapi-key": "288b3aa543mshecdc20423d3c734p128da2jsn0c899eff2232",
    };

    http.Response response = await http.get(
        "https://covid-19-data.p.rapidapi.com/country/code?format=json&code=pt",
        headers: _headers
    );
    print(response.body);
    List<dynamic> data = json.decode(response.body);
    print("1");
    print(data[0]);
    dailyReports =DailyReportsByCountryName.fromJson(data[0]);
    print("2");
    print('3');
  }

  DailyReportsByCountryName getDailyReport(){
    return dailyReports;
  }

}

class DailyReportsByCountryName {
  String country;
  //Provinces provinces;
  String code;
  int confirmed;
  int recovered;
  int critical;
  int deaths;
  double latitude;
  double longitude;
  String lastChange;
  String lastUpdate;


  DailyReportsByCountryName({
      this.country,
      this.code,
      this.confirmed,
      this.recovered,
      this.critical,
      this.deaths,
      this.latitude,
      this.longitude,
      this.lastChange,
      this.lastUpdate});

  factory DailyReportsByCountryName.fromJson(Map<String,dynamic> parsedJson){
    print("1.5");
    return DailyReportsByCountryName(
      country: parsedJson['country'],
      code: parsedJson['code'],
      confirmed: parsedJson['confirmed'],
      recovered: parsedJson['recovered'],
      critical: parsedJson['critical'],
      deaths: parsedJson['deaths'],
      latitude: parsedJson['latitude'],
      longitude: parsedJson['longitude'],
      lastChange: parsedJson['lastChange'],
      lastUpdate: parsedJson['lastUpdate']
    );
  }
}

/*class Provinces {

  String province;
  int confirmed;
  int recovered;
  int deaths;
  int active;

  Provinces({
      this.province, this.confirmed, this.recovered, this.deaths, this.active});

  factory Provinces.fromJson(Map<String,dynamic> parsedJson){
    print("1.6");
    Provinces temp = Provinces(
        province: parsedJson['province'],
        confirmed: parsedJson['confirmed'],
        recovered: parsedJson['recovered'],
        deaths: parsedJson['deaths'],
        active: parsedJson['active']
    );
    print("1.7");
    return temp;
  }
}*/