//@dart=2.9
import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';

class BasePage{
  static const timeout = Duration(seconds: 30);
  FlutterDriver _driver;

  BasePage(FlutterDriver driver){
    _driver = driver;
  }

  Future<void> tap(SerializableFinder locator) async {
    try {
      await FlutterDriverUtils.tap(_driver, locator, timeout: timeout);
    } catch (error) {
      throw Exception('Element does not exists => $error)');
    }
  }


  Future<void> fillInput(SerializableFinder locator, String value) async {
    try {
      await FlutterDriverUtils.enterText(_driver, locator, value, timeout: timeout);
    } catch (error) {
      throw Exception('Element does not exists => $error)');
    }
  }

  static Future<void> waitFor(FlutterDriver driver, SerializableFinder finder,
      {Duration timeout = const Duration(seconds: 30)}) async {
    try {
      await driver.waitFor(finder, timeout: timeout);
      return await FlutterDriverUtils.waitForFlutter(driver, timeout: timeout);
    } catch (error) {
      throw Exception('Element does not exists => $error)');
    }
  }
}
