// ignore_for_file: missing-test-assertion, deprecated_member_use_from_same_package, lines_longer_than_80_chars
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/models/emoji_family.dart";
import "package:world_countries/src/theme/tile_theme_data/country_tile_theme_data.dart";
import "package:world_countries/src/widgets/country/country_picker.dart";
import "package:world_countries/src/widgets/country/country_tile.dart";
import "package:world_flags/world_flags.dart";

import "../../../helpers/widget_tester_extension.dart";

void main() => group("$CountryPicker", () {
      test("copyWith", () {
        const picker = CountryPicker();
        expect(picker.onSelect, isNull);
        final newPicker = picker.copyWith(onSelect: (item) => item.toString());
        newPicker.onSelect?.call(picker.items.first);
        expect(newPicker.onSelect, isNotNull);
        final newestPicker = newPicker.copyWith(onSelect: print);
        expect(newestPicker.onSelect, isNotNull);
        expect(newestPicker.copyWith(), isNot(newestPicker));
      });

      testWidgets(
        "scroll from first to last item and tap",
        (tester) async => tester.testPickerBody(
          const CountryPicker(),
          (item) => item.namesNative.first.common,
        ),
      );

      testWidgets(
        "scroll from first to last item and tap with emoji family",
        (tester) async => tester.testPickerBody(
          const CountryPicker(),
          (item) => item.namesNative.first.common,
          theme: const CountryTileThemeData(emojiFamily: EmojiFamily.twemoji),
        ),
      );

      testWidgets(
        "builder from theme",
        (tester) async => tester.testPickerBody(
          const CountryPicker(),
          theme: CountryTileThemeData(
            emojiFamily: EmojiFamily.twemoji,
            builder: (properties, {isDense}) =>
                Text(properties.item.translations.first.common),
          ),
          (item) => item.translations.first.common,
        ),
      );

      testWidgets(
        "test behavior in dialog",
        (tester) async => tester.testPickerInDialog(
          const CountryPicker(),
          (item) => item.namesNative.first.common,
        ),
      );

      testWidgets(
        "test behavior in search",
        (tester) async => tester.testPickerInSearch(
          const CountryPicker(),
          (item) => item.namesNative.first.common,
        ),
      );

      testWidgets(
        "test behavior in modal bottom sheet",
        (tester) async => tester.testPickerInModal(
          const CountryPicker(),
          (item) => item.namesNative.first.common,
        ),
      );

      testWidgets(
        "showSearchBar: false and without selection test",
        (tester) async => tester.testPickerBody(
          CountryPicker(
            searchIn: (_, __) => const [],
            showClearButton: false,
            showSearchBar: false,
          ),
          (item) => item.namesNative.first.common,
          testSelection: false,
        ),
      );

      testWidgets("searchSuggestions()", (tester) async {
        await tester.pumpMaterialApp(
          SearchAnchor.bar(
            suggestionsBuilder: const CountryPicker().searchSuggestions,
          ),
        );
        final tile = find.byType(CountryTile);
        expect(tile, findsNothing);
        await tester.tapAndSettle(find.byIcon(Icons.search));
        expect(tile, findsWidgets);
        await tester.tapAndSettle(tile.first);
        expect(tile, findsNothing);
      });

      testWidgets("searchSuggestions() with emoji family", (tester) async {
        await tester.pumpMaterialApp(
          SearchAnchor.bar(
            suggestionsBuilder: const CountryPicker().searchSuggestions,
          ),
          const CountryTileThemeData(emojiFamily: EmojiFamily.twemoji),
        );
        final tile = find.byType(CountryTile);
        expect(tile, findsNothing);
        await tester.tapAndSettle(find.byIcon(Icons.search));
        expect(tile, findsWidgets);
        await tester.tapAndSettle(tile.first);
        expect(tile, findsNothing);
      });

      testWidgets("in $WidgetsApp with sorted countries", (tester) async {
        final countries = List.of(WorldCountry.list)
          ..sort((a, b) => a.population.compareTo(b.population));
        await tester.pumpWidgetsApp(
          CountryPicker(
            countries: countries,
            chosen: [countries.last],
            disabled: [countries.first],
            showSearchBar: false,
          ),
        );
        expect(find.byType(CountryPicker), findsOneWidget);
        expect(
          find.text(countries.first.namesNative.first.common),
          findsNWidgets(2), // TODO: Refactor with semantic label.
        );
        expect(
          find.text(countries.last.namesNative.first.common),
          findsNothing,
        );
      });

      testWidgets("in $WidgetsApp with sorted via sort param", (tester) async {
        final countries = List.of(WorldCountry.list);
        await tester.pumpWidgetsApp(
          CountryPicker(
            countries: countries,
            chosen: [countries.last],
            disabled: [countries.first],
            showSearchBar: false,
            sort: (a, b) => a.population.compareTo(b.population),
          ),
        );
        final sortedCountries = List.of(WorldCountry.list)
          ..sort((a, b) => a.population.compareTo(b.population));
        expect(find.byType(CountryPicker), findsOneWidget);
        expect(
          find.text(sortedCountries.first.namesNative.first.common),
          findsNWidgets(2), // TODO: Refactor with semantic label.
        );
        expect(
          find.text(sortedCountries.last.namesNative.first.common),
          findsNothing,
        );
      });

      testWidgets("in $WidgetsApp with empty countries", (tester) async {
        await tester.pumpWidgetsApp(
          const CountryPicker(
            countries: [],
            emptyStatePlaceholder: Placeholder(),
            showClearButton: false,
            showSearchBar: false,
          ),
        );
        expect(find.byType(CountryPicker), findsOneWidget);
        expect(find.byType(Placeholder), findsOneWidget);
      });
    });
