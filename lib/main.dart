import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weather_app/app/weather_app.dart';
import 'injection.dart' as di;
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  di.init();

  WidgetsFlutterBinding.ensureInitialized();

  /// Flutter DotEnv
  await dotenv.load();

  runApp(const WeatherApp());
}
