// @dart=2.9
import 'dart:async';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';
import 'steps/global_steps.dart';
import 'steps/search_steps.dart';

Future<void> main() {
  final config = FlutterTestConfiguration()
    ..features = [Glob(r"test_driver/bdd-test/feature/search.feature")]
    ..stepDefinitions = [OpenApp(), TapSearchIcon(), EnterSearchKey(), ClickSearchButton(), VerifySearchResult()]
    ..restartAppBetweenScenarios = true
    ..targetAppPath = "test_driver/bdd-test/app.dart"
   ..targetDeviceId = "emulator-5554"; // Give device ID
  return GherkinRunner().execute(config);
}
