import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';

import 'screens/input_page.dart';

var customRoutes = <String, WidgetBuilder>{
  '/': (context) => InputPage(),
  '/results_page': (context) => ResultsPage(),
};
