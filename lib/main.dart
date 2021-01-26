import 'package:flutter/material.dart';
import 'app/app.dart';
import 'injectoin.dart';

void main() async {
  await iniGetIt();
  runApp(App());
}
