//@dart=2.9
import 'dart:async';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

class OpenApp extends WhenWithWorld<FlutterWorld>{
  OpenApp()
      : super(StepDefinitionConfiguration()..timeout = const Duration(seconds: 30));

  @override
  Future<void> executeStep() async {
  }

  @override
  RegExp get pattern => RegExp(r"I go to the app");
}
