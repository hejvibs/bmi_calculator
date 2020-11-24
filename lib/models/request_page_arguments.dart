import 'package:flutter/material.dart';

class ResultsPageArguments {
  ResultsPageArguments({
    @required this.bmiResultValue,
    @required this.bmiResultText,
    @required this.bmiResultInterpretation,
  });

  final String bmiResultValue;
  final String bmiResultText;
  final String bmiResultInterpretation;
}
