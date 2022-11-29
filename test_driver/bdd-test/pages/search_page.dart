import 'package:flutter_driver/flutter_driver.dart';
import 'base_page.dart';

class SearchPage extends BasePage {
  final searchIcon = find.byValueKey("searchBtn");
  final searchTextBox = find.byType("TextField");
  final searchResult =  find.text("Steve Aoki");

  SearchPage(FlutterDriver driver) : super(driver);

  Future<void> tapSearchIcon() async {
    await super.tap(searchIcon);
  }
  
  Future<void> enterSearchKey(String value) async{
    await super.fillInput(searchTextBox, value);
  }

  Future<void> tapAlbum() async{
    await super.tap(searchResult);
  }
}