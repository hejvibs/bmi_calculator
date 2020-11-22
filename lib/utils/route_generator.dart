import 'package:bmi_calculator/screens/error_page.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case InputPage.routeName:
        return MaterialPageRoute(builder: (_) => InputPage());

      case ResultsPage.routeName:
        if (args is ResultsPageArguments) {
          return MaterialPageRoute(
            builder: (_) => ResultsPage(
              arguments: args,
            ),
          );
        }
        return MaterialPageRoute(builder: (_) => ErrorPage());

      default:
        return MaterialPageRoute(builder: (_) => ErrorPage());
    }
  }
}
