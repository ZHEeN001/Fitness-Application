import 'package:http/http.dart' as http;
import 'dart:convert';

import 'weather.dart';

class HttpHelper {
  // http://api.openweathermap.org/data/2.5/
  // weather?q=Landon&appid=7d99c64ec091dba5aae986466a067123

  final String authority = 'api.openweathermap.org';
  final String path = 'data/2.5/weather';
  final String apiKey = '7d99c64ec091dba5aae986466a067123';

  Future<Weather> getWeather(String location) async {
    Map<String, dynamic> parameters = {'q': location, 'appId': apiKey};
    Uri uri = Uri.https(authority, path, parameters);
    http.Response result = await http.get(uri);
    Map<String, dynamic> data = json.decode(result.body);
    Weather weather = Weather.fromJson(data);

    return weather;
  }
}
