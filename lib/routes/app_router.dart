import 'package:auto_route/auto_route_annotations.dart';
import 'package:bmi_calculator/screens/error_page.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/screens/results_page.dart';

@autoRouter
class $AppRouter {
  @initial
  InputPage inputPage;
  ResultsPage resultsPage;
  ErrorPage errorPage;
}
