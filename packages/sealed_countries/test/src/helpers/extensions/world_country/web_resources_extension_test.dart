import "package:sealed_countries/src/helpers/extensions/world_country/web_resources_extension.dart";
import "package:sealed_countries/src/model/country/country.dart";
import "package:test/test.dart";

void main() => group("WebResourcesExtension", () {
      test(
        "flagPngUrl",
        () => expect(
          WorldCountry.list.first
              .flagPngUrl()
              .contains(WebResourcesExtension.png),
          isTrue,
        ),
      );

      test(
        "flagSvgUrl",
        () => expect(
          WorldCountry.list.first
              .flagSvgUrl()
              .contains(WebResourcesExtension.svg),
          isTrue,
        ),
      );

      group("maybeCoatOfArmsPngUrl", () {
        test(
          "country with coat of arms",
          () => expect(
            WorldCountry.list
                .firstWhere((country) => country.hasCoatOfArms)
                .maybeCoatOfArmsPngUrl()
                ?.contains(WebResourcesExtension.png),
            isTrue,
          ),
        );

        test(
          "country without coat of arms",
          () => expect(
            WorldCountry.list
                .firstWhere((country) => !country.hasCoatOfArms)
                .maybeCoatOfArmsPngUrl(),
            isNull,
          ),
        );
      });

      group("maybeCoatOfArmsSvgUrl", () {
        test(
          "country with coat of arms",
          () => expect(
            WorldCountry.list
                .firstWhere((country) => country.hasCoatOfArms)
                .maybeCoatOfArmsSvgUrl()
                ?.contains(WebResourcesExtension.svg),
            isTrue,
          ),
        );

        test(
          "country without coat of arms",
          () => expect(
            WorldCountry.list
                .firstWhere((country) => !country.hasCoatOfArms)
                .maybeCoatOfArmsSvgUrl(),
            isNull,
          ),
        );
      });
    });
