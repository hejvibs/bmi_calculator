// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/router_utils.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:bmi_calculator/screens/error_page.dart';

class AppRouter {
  static const inputPage = '/';
  static const resultsPage = '/results-page';
  static const errorPage = '/error-page';
  static GlobalKey<NavigatorState> get navigatorKey =>
      getNavigatorKey<AppRouter>();
  static NavigatorState get navigator => navigatorKey.currentState;

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case AppRouter.inputPage:
        return MaterialPageRoute(
          builder: (_) => InputPage(),
          settings: settings,
        );
      case AppRouter.resultsPage:
        if (hasInvalidArgs<ResultsPageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<ResultsPageArguments>(args);
        }
        final typedArgs = args as ResultsPageArguments;
        return MaterialPageRoute(
          builder: (_) => ResultsPage(
              bmiResultValue: typedArgs.bmiResultValue,
              bmiResultText: typedArgs.bmiResultText,
              bmiResultInterpretation: typedArgs.bmiResultInterpretation),
          settings: settings,
        );
      case AppRouter.errorPage:
        return MaterialPageRoute(
          builder: (_) => ErrorPage(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//ResultsPage arguments holder class
class ResultsPageArguments {
  final String bmiResultValue;
  final String bmiResultText;
  final String bmiResultInterpretation;
  ResultsPageArguments(
      {@required this.bmiResultValue,
      @required this.bmiResultText,
      @required this.bmiResultInterpretation});
}
