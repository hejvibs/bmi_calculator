import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';

import 'input_page.dart';

var customRoutes = <String, WidgetBuilder>{
  '/': (context) => InputPage(),
  '/results_page': (context) => ResultsPage(),
};
