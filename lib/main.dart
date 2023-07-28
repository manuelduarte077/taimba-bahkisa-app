import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather_app/app/weather_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Flutter DotEnv
  await dotenv.load();

  runZonedGuarded(() {
    runApp(const WeatherApp());
  }, (error, stackTrace) {
    print('runZonedGuarded: Caught error in my root zone.');
  });
}
