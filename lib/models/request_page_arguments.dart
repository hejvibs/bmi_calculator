import 'package:flutter/material.dart';
import 'package:sailor/sailor.dart';

class ResultsPageArguments extends BaseArguments {
  ResultsPageArguments({
    @required this.bmiResultValue,
    @required this.bmiResultText,
    @required this.bmiResultInterpretation,
  });

  final String bmiResultValue;
  final String bmiResultText;
  final String bmiResultInterpretation;
}
