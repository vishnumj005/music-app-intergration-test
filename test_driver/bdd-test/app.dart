import 'package:music_app/main.dart' as flutter_bdd;
import 'package:flutter_driver/driver_extension.dart';
import 'package:test/test.dart';

void main() {
  enableFlutterDriverExtension();
  flutter_bdd.main();
  test('Start Main', () {
    expect(() => flutter_bdd.main(), returnsNormally);
  });
}
