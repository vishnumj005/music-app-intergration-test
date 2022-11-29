import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:music_app/main.dart' as app;
import 'package:music_app/presentation/pages/search_page.dart';
import 'package:music_app/presentation/widgets/appbar_search_button.dart';

void main() {
  group('Music App Integration Test', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    testWidgets("Verify End-to-End Test for Music App", (WidgetTester  tester) async {
      //Run App
      app.main();
      await tester.pumpAndSettle();
      await tester.pump(const Duration(seconds: 5));

      //Find all Elements
      final Finder searchIcon = find.byType(AppbarSearchButton);
      final Finder searchTextBox = find.byKey(const Key("searchBox"));
      final Finder albums = find.byKey(const ValueKey("favBtn"));
      final Finder albumWidget = find.byType(ArtistWidget).first;
      var albumName = ["ako", "drak"];

      //Tap Search Icon
      await tester.tap(searchIcon);
      await tester.pumpAndSettle();
      await tester.pump(const Duration(seconds: 2));

      //2 iteration for select two albums (ako and drak)
      for (int i=0; i<albumName.length; i++) {
        //Search album
        await tester.enterText(searchTextBox, albumName[i]);
        await tester.tap(searchIcon);
        await tester.pumpAndSettle();

        //Tap the first search result
        await tester.tap(albumWidget);
        await tester.pumpAndSettle();

        //Add two albums to favorite
        for (int j = 0; j < 2; j++) {
          await tester.tap(albums.at(j));
          await tester.pumpAndSettle();
        }

        await tester.pageBack();
        await tester.pumpAndSettle();
      }

      //Go back to home page
      await tester.pageBack();
      await tester.pumpAndSettle();

      //Remove albums from favorite
      for (int j = 0; j < 2; j++) {
        await tester.tap(albums.at(j));
        await tester.pumpAndSettle();
      }
      await tester.pump(const  Duration(seconds: 2));

    });
  });
}
