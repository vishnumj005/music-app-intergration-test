//@dart=2.9
import 'dart:async';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import '../pages/search_page.dart';

class TapSearchIcon extends WhenWithWorld<FlutterWorld>{
  TapSearchIcon()
      : super(StepDefinitionConfiguration()..timeout = const Duration(seconds: 30));

  @override
  Future<void> executeStep() async {
    final searchPage = SearchPage(world.driver);
    await searchPage.tapSearchIcon();
  }

  @override
  RegExp get pattern => RegExp(r"I click search icon in home page");
}

class EnterSearchKey extends And1WithWorld<String, FlutterWorld>{
  EnterSearchKey()
      : super(StepDefinitionConfiguration()..timeout = const Duration(seconds: 30));

  @override
  Future<void> executeStep(String album) async {
    final searchPage = SearchPage(world.driver);
    await searchPage.enterSearchKey(album);
  }

  @override
  RegExp get pattern => RegExp(r"I enter {string} keyword in search field");
}

class ClickSearchButton extends AndWithWorld<FlutterWorld>{
  ClickSearchButton()
      : super(StepDefinitionConfiguration()..timeout = const Duration(seconds: 30));

  @override
  Future<void> executeStep() async {
    final searchPage = SearchPage(world.driver);
    await searchPage.tapSearchIcon();
  }

  @override
  RegExp get pattern => RegExp(r"I click search button");
}

class VerifySearchResult extends ThenWithWorld<FlutterWorld>{
  VerifySearchResult()
      : super(StepDefinitionConfiguration()..timeout = const Duration(seconds: 30));

  @override
  Future<void> executeStep() async {
    final searchPage = SearchPage(world.driver);
    await searchPage.tapAlbum();
  }

  @override
  RegExp get pattern => RegExp(r"I click the first album");
}