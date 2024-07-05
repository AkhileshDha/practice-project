import 'package:http/http.dart';
import 'dart:convert';
class A {

  getData() async
  {
    Response response = await get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=677d37cb59e39736029b3429ec6d2326"));
    Map data = jsonDecode(response.body);
    // print(data);
    List weather_data = data['weather'];
    Map weather_map_data = weather_data[0];
    print(weather_data);
    print(weather_map_data['main']);
  }
}