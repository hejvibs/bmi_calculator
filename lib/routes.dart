import 'package:bmi_calculator/screens/error_page.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:sailor/sailor.dart';

class Routes {
  static final sailor = Sailor();

  static void createRoute() {
    sailor.addRoutes([
      SailorRoute(
        name: InputPage.routeName,
        builder: (context, args, params) {
          return InputPage();
        },
      ),
      SailorRoute(
          name: ResultsPage.routeName,
          builder: (context, args, params) {
            return ResultsPage(
              bmiResultValue: params.param('bmiResultValue'),
              bmiResultText: params.param('bmiResultText'),
              bmiResultInterpretation: params.param('bmiResultInterpretation'),
            );
          },
          params: [
            SailorParam<String>(name: 'bmiResultValue', isRequired: true),
            SailorParam<String>(name: 'bmiResultText', isRequired: true),
            SailorParam<String>(name: 'bmiResultInterpretation', isRequired: true),
          ]),
      SailorRoute(
        name: ErrorPage.routeName,
        builder: (context, args, params) {
          return ErrorPage();
        },
      ),
    ]);
  }
}
