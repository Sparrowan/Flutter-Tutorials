import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location;
  String time;
  String flag;
  String url;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      Uri urll = Uri.parse("https://worldtimeapi.org/api/timezone/$url");

      Response response = await get(urll);
      Map data = jsonDecode(response.body);
      // print(data['datetime']);
      // get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      // create DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      time = now.toString();

      // print(now);
    } catch (e) {
      print('The error is $e');
      time = 'Could not get data';
    }
  }
}
