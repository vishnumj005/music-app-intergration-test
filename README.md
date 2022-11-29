# Music App Integration Test and BDD implementation
> This project contains the Test automation of integration tests and functionality tests (search function using BDD) of Music App

[Github Link to clone repo](https://github.com/vishnumj005/music-app-intergration-test.git)


## Requirements

- Flutter
- [flutter_gherkin](https://pub.dartlang.org/packages/flutter_gherkin)
- integration_test
- flutter_test
- intellij
- Android Studio 3.1.4

## Installation of packages:

To install the packages,  add the following into pubspec.yaml 

```dart
dependencies:
    flutter_gherkin: ^1.1.9
```

```dart
dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_driver:
    sdk: flutter
  integration_test:
    sdk: flutter
```

## Execution Test:

### Execute of Integration test to iOS / Android:
 Execute command line with target devices
```
# execute command line

$ cd <root folder>
$ flutter drive --driver=test_driver/integration-test/driver/integration_test_driver.dart --target=test_driver/integration-test/app_test.dart
```

### Execute of BDD test to iOS / Android:
- Use flutter devices to get target device id
```
# run flutter devices
$ flutter devices
```

- Config targetDeviceId in [app_test.dart](test_driver/bdd-test/app_test.dart)
```
Ex: (Android), default empty string
..targetDeviceId = "emulator-5554"
```

- Execute command line with target devices
```
# execute command line
$ cd <root folder>
$ dart test_driver/bdd-test/app_test.dart

or 
$ cd <root folder>
$ flutter drive test_driver/bdd-test/app.dart
```


# Folder Structure

	.
	├── test_driver
    │     ├──bdd-test
    │     │      ├── steps                                 # Step definitions
	│     │      │     ├── global_steps.py
	│     │      │     └── search_steps.py
    │     │      ├── pages                                 # Page Object File
	│     │      │     ├── base_page.py
	│     │      │     └── search_page.py
    │     │      ├── feature                               # Feature file File
	│     │      │     └── search.feature
    │     │      ├── app.dart
    │     │      └── app_test.dart    
    │     ├──integration-test
    │     │      ├── driver                                 # integrationDriver file
	│     │      │     └── integration_test_driver.py
    │     │      ├── app_test.dart                                 # Integration Test file 
