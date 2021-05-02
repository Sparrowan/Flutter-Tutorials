import 'package:flutter/material.dart';
import 'package:sparrowan_id/pages/choose_location.dart';
import 'package:sparrowan_id/pages/home.dart';
import 'package:sparrowan_id/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation()
    },
  ));
}
