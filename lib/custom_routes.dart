import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';

import 'screens/input_page.dart';

var customRoutes = <String, WidgetBuilder>{
  '/': (context) => InputPage(),
  ResultsPage.routeName: (context) => ResultsPage(ModalRoute.of(context).settings.arguments),
};
