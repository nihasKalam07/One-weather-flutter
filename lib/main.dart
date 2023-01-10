import 'package:flutter/material.dart';
import 'package:one_weather_flutter/screens/city_screen.dart';
import 'package:one_weather_flutter/screens/loading_screen.dart';
import 'package:one_weather_flutter/screens/location_screen.dart';
import 'package:one_weather_flutter/utilities/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData.dark();
    return MaterialApp(
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.white,
        ),
      ),
      initialRoute: kLoadingScreenRoute,
      routes: {
        kLoadingScreenRoute: (context) => LoadingScreen(),
        kLocationScreenRoute: (context) => LocationScreen(),
        kCityScreenRoute: (context) => CityScreen()
      },
    );
  }
}
