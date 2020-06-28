import 'IndianPage.dart';
import 'loadingStatePage.dart';
import 'statePage.dart';
import 'countryPage.dart';
import 'loadingCountryPage.dart';
import 'alertScreen.dart';
import 'homepage.dart';
import 'loadingHomePage.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LoadingHomePage());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/country':
        return MaterialPageRoute(builder: (_) => LoadingCountryPage(args));
      case '/countrypage':
        return MaterialPageRoute(builder: (_) => CountryPage(args));
      case '/India':
        return MaterialPageRoute(builder: (_) => IndiaPage());
      case '/state':
        return MaterialPageRoute(builder: (_) => LoadingStatePage(args));
      case '/statepage':
        return MaterialPageRoute(builder: (_) => StatePage(args));
      case '/error':
        return MaterialPageRoute(builder: (_) => AlertScreen());
    }
    return _errorRoute();
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      body: Center(
        child: Text("ERROR"),
      ),
    );
  });
}