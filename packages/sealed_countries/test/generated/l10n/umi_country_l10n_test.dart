// ignore_for_file: lines_longer_than_80_chars, avoid-non-ascii-symbols

import "package:sealed_countries/src/data/official_world_countries.data.dart";
import "package:sealed_countries/src/model/locale/basic_typed_locale.dart";
import "package:sealed_currencies/sealed_currencies.dart";
import "package:test/test.dart";

void main() => group(
      "$CountryUmi() L10N",
      () {
        const value = CountryUmi();

        test("has translation for 'en' locale", () {
          const expectedName = "United States Minor Outlying Islands";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangEng()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangEng()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangEng(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangEng(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'sr' locale", () {
          const expectedName = "Мала спољна острва Сједињених Америчких Држава";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangSrp()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangSrp()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangSrp(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangSrp(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'ar' locale", () {
          const expectedName = "جزر الولايات المتحدة الصغيرة النائية";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangAra()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangAra()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangAra(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangAra(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'br' locale", () {
          const expectedName = "Inizi Minor A-bell Stadoù-Unanet";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangBre()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangBre()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangBre(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangBre(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'cs' locale", () {
          const expectedName = "Menší odlehlé ostrovy USA";
          const expectedFullName =
              "Menší odlehlé ostrovy Spojených států amerických";
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangCes()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangCes()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangCes(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangCes(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'cy' locale", () {
          const expectedName = "United States Minor Outlying Islands";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangCym()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangCym()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangCym(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangCym(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'de' locale", () {
          const expectedName =
              "Kleinere Inselbesitzungen der Vereinigten Staaten";
          const expectedFullName = "USA, kleinere ausgelagerte Inseln";
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangDeu()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangDeu()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangDeu(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangDeu(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'et' locale", () {
          const expectedName = "Ühendriikide hajasaared";
          const expectedFullName = "Ühendriikide väikesed hajasaared";
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangEst()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangEst()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangEst(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangEst(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'fi' locale", () {
          const expectedName = "Yhdysvaltain asumattomat saaret";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangFin()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangFin()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangFin(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangFin(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'fr' locale", () {
          const expectedName = "Îles mineures éloignées des États-Unis";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangFra()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangFra()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangFra(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangFra(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'hr' locale", () {
          const expectedName = "Mali udaljeni otoci SAD-a";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangHrv()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangHrv()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangHrv(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangHrv(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'hu' locale", () {
          const expectedName =
              "Az Amerikai Egyesült Államok lakatlan külbirtokai";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangHun()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangHun()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangHun(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangHun(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'it' locale", () {
          const expectedName =
              "Isole minori esterne degli Stati Uniti d'America";
          const expectedFullName = "Stati Uniti Isole Minori";
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangIta()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangIta()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangIta(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangIta(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'ja' locale", () {
          const expectedName = "合衆国領有小離島";
          const expectedFullName = "アメリカ合衆国外諸島";
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangJpn()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangJpn()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangJpn(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangJpn(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'ko' locale", () {
          const expectedName = "미국령 군소 제도";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangKor()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangKor()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangKor(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangKor(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'nl' locale", () {
          const expectedName =
              "Kleine afgelegen eilanden van de Verenigde Staten";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangNld()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangNld()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangNld(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangNld(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'fa' locale", () {
          const expectedName = "جزایر کوچک حاشیه‌ای ایالات متحده آمریکا";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangFas()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangFas()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangFas(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangFas(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'pl' locale", () {
          const expectedName = "Dalekie Wyspy Mniejsze Stanów Zjednoczonych";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangPol()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangPol()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangPol(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangPol(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'pt' locale", () {
          const expectedName = "Ilhas Menores Distantes dos Estados Unidos";
          const expectedFullName = "Estados Unidos Ilhas Menores Distantes";
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangPor()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangPor()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangPor(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangPor(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'ru' locale", () {
          const expectedName = "Внешние малые острова США";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangRus()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangRus()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangRus(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangRus(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'sk' locale", () {
          const expectedName = "Menšie odľahlé ostrovy USA";
          const expectedFullName = "Menšie odľahlé ostrovy Spjoených štátov";
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangSlk()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangSlk()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangSlk(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangSlk(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'es' locale", () {
          const expectedName = "Islas Ultramarinas Menores de Estados Unidos";
          const expectedFullName = "Estados Unidos Islas menores alejadas de";
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangSpa()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangSpa()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangSpa(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangSpa(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'sv' locale", () {
          const expectedName =
              "Förenta staternas mindre öar i Oceanien och Västindien";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangSwe()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangSwe()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangSwe(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangSwe(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'tr' locale", () {
          const expectedName = "Amerika Birleşik Devletleri Küçük Dış Adaları";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangTur()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangTur()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangTur(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangTur(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'ur' locale", () {
          const expectedName = "امریکی چھوٹے بیرونی جزائر";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangUrd()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangUrd()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangUrd(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangUrd(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'zh' locale", () {
          const expectedName = "美国本土外小岛屿";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangZho()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangZho()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangZho(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangZho(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'af' locale", () {
          const expectedName = "Klein afgeleë eilande van die VSA";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangAfr()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangAfr()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangAfr(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangAfr(), name: expectedName)),
          );
        });
        test("has translation for 'am' locale", () {
          const expectedName = "የዩ ኤስ ጠረፍ ላይ ያሉ ደሴቶች";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangAmh()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangAmh()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangAmh(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangAmh(), name: expectedName)),
          );
        });
        test("has translation for 'as' locale", () {
          const expectedName = "ইউ. এছ. আউটলায়িং দ্বীপপুঞ্জ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangAsm()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangAsm()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangAsm(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangAsm(), name: expectedName)),
          );
        });
        test("has translation for 'az' locale", () {
          const expectedName = "ABŞ-a bağlı kiçik adacıqlar";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangAze()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangAze()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangAze(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangAze(), name: expectedName)),
          );
        });
        test("has translation for 'be' locale", () {
          const expectedName = "Малыя Аддаленыя астравы ЗША";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangBel()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangBel()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangBel(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangBel(), name: expectedName)),
          );
        });
        test("has translation for 'bg' locale", () {
          const expectedName = "Отдалечени острови на САЩ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangBul()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangBul()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangBul(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangBul(), name: expectedName)),
          );
        });
        test("has translation for 'bn' locale", () {
          const expectedName = "যুক্তরাষ্ট্রের পার্শ্ববর্তী দ্বীপপুঞ্জ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangBen()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangBen()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangBen(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangBen(), name: expectedName)),
          );
        });
        test("has translation for 'bs' locale", () {
          const expectedName = "Američka Vanjska Ostrva";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangBos()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangBos()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangBos(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangBos(), name: expectedName)),
          );
        });
        test("has translation for 'ca' locale", () {
          const expectedName = "Illes Perifèriques Menors dels EUA";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangCat()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangCat()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangCat(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangCat(), name: expectedName)),
          );
        });
        test("has translation for 'ce' locale", () {
          const expectedName = "АЦШн арахьара кегийн гӀайренаш";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangChe()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangChe()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangChe(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangChe(), name: expectedName)),
          );
        });
        test("has translation for 'da' locale", () {
          const expectedName = "Amerikanske oversøiske øer";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangDan()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangDan()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangDan(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangDan(), name: expectedName)),
          );
        });
        test("has translation for 'dz' locale", () {
          const expectedName = "ཡུ་ཨེས་གྱི་མཐའ་མཚམས་མཚོ་གླིང་";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangDzo()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangDzo()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangDzo(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangDzo(), name: expectedName)),
          );
        });
        test("has translation for 'ee' locale", () {
          const expectedName = "U.S. Minor Outlaying ƒudomekpowo nutome";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangEwe()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangEwe()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangEwe(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangEwe(), name: expectedName)),
          );
        });
        test("has translation for 'el' locale", () {
          const expectedName = "Απομακρυσμένες Νησίδες ΗΠΑ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangEll()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangEll()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangEll(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangEll(), name: expectedName)),
          );
        });
        test("has translation for 'eo' locale", () {
          const expectedName = "Usonaj malgrandaj insuloj";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangEpo()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangEpo()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangEpo(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangEpo(), name: expectedName)),
          );
        });
        test("has translation for 'eu' locale", () {
          const expectedName =
              "Ameriketako Estatu Batuetako Kanpoaldeko Uharte Txikiak";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangEus()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangEus()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangEus(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangEus(), name: expectedName)),
          );
        });
        test("has translation for 'fo' locale", () {
          const expectedName = "Sambandsríki Amerikas fjarskotnu oyggjar";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangFao()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangFao()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangFao(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangFao(), name: expectedName)),
          );
        });
        test("has translation for 'fy' locale", () {
          const expectedName =
              "Lyts ôflizzen eilannen fan de Ferienigde Staten";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangFry()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangFry()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangFry(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangFry(), name: expectedName)),
          );
        });
        test("has translation for 'ga' locale", () {
          const expectedName = "Oileáin Imeallacha S.A.M.";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangGle()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangGle()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangGle(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangGle(), name: expectedName)),
          );
        });
        test("has translation for 'gd' locale", () {
          const expectedName = "Meanbh-Eileanan Iomallach nan SA";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangGla()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangGla()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangGla(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangGla(), name: expectedName)),
          );
        });
        test("has translation for 'gl' locale", () {
          const expectedName = "Illas Menores Distantes dos Estados Unidos";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangGlg()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangGlg()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangGlg(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangGlg(), name: expectedName)),
          );
        });
        test("has translation for 'gu' locale", () {
          const expectedName = "યુ.એસ. આઉટલાઇનિંગ આઇલેન્ડ્સ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangGuj()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangGuj()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangGuj(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangGuj(), name: expectedName)),
          );
        });
        test("has translation for 'he' locale", () {
          const expectedName = "האיים המרוחקים הקטנים של ארה״ב";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangHeb()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangHeb()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangHeb(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangHeb(), name: expectedName)),
          );
        });
        test("has translation for 'hi' locale", () {
          const expectedName = "यू॰एस॰ आउटलाइंग द्वीपसमूह";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangHin()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangHin()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangHin(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangHin(), name: expectedName)),
          );
        });
        test("has translation for 'hy' locale", () {
          const expectedName = "Արտաքին կղզիներ (ԱՄՆ)";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangHye()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangHye()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangHye(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangHye(), name: expectedName)),
          );
        });
        test("has translation for 'id' locale", () {
          const expectedName = "Kepulauan Terluar A.S.";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangInd()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangInd()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangInd(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangInd(), name: expectedName)),
          );
        });
        test("has translation for 'ig' locale", () {
          const expectedName = "Obere Agwaetiti Dị Na Mpụga U.S";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangIbo()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangIbo()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangIbo(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangIbo(), name: expectedName)),
          );
        });
        test("has translation for 'is' locale", () {
          const expectedName = "Smáeyjar Bandaríkjanna";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangIsl()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangIsl()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangIsl(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangIsl(), name: expectedName)),
          );
        });
        test("has translation for 'jv' locale", () {
          const expectedName = "Kapuloan AS Paling Njaba";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangJav()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangJav()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangJav(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangJav(), name: expectedName)),
          );
        });
        test("has translation for 'ka' locale", () {
          const expectedName = "აშშ-ის შორეული კუნძულები";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangKat()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangKat()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangKat(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKat(), name: expectedName)),
          );
        });
        test("has translation for 'kk' locale", () {
          const expectedName = "АҚШ-тың сыртқы кіші аралдары";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangKaz()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangKaz()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangKaz(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKaz(), name: expectedName)),
          );
        });
        test("has translation for 'km' locale", () {
          const expectedName = "កោះ​អៅឡាយីង​អាមេរិក";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangKhm()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangKhm()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangKhm(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKhm(), name: expectedName)),
          );
        });
        test("has translation for 'kn' locale", () {
          const expectedName = "ಯುಎಸ್‌ ಔಟ್‌ಲೇಯಿಂಗ್ ದ್ವೀಪಗಳು";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangKan()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangKan()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangKan(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKan(), name: expectedName)),
          );
        });
        test("has translation for 'ks' locale", () {
          const expectedName = "یوٗنایٹِڑ سِٹیٹِس ماینَر آوُٹلییِنگ جٔزیٖرٕ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangKas()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangKas()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangKas(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKas(), name: expectedName)),
          );
        });
        test("has translation for 'ky' locale", () {
          const expectedName = "АКШнын сырткы аралдары";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangKir()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangKir()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangKir(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKir(), name: expectedName)),
          );
        });
        test("has translation for 'lb' locale", () {
          const expectedName = "Amerikanesch-Ozeanien";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangLtz()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangLtz()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangLtz(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangLtz(), name: expectedName)),
          );
        });
        test("has translation for 'lo' locale", () {
          const expectedName = "ໝູ່ເກາະຮອບນອກຂອງສະຫະລັດຯ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangLao()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangLao()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangLao(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangLao(), name: expectedName)),
          );
        });
        test("has translation for 'lt' locale", () {
          const expectedName = "Jungtinių Valstijų Mažosios Tolimosios Salos";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangLit()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangLit()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangLit(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangLit(), name: expectedName)),
          );
        });
        test("has translation for 'lv' locale", () {
          const expectedName = "ASV Mazās Aizjūras salas";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangLav()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangLav()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangLav(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangLav(), name: expectedName)),
          );
        });
        test("has translation for 'mk' locale", () {
          const expectedName = "Американски територии во Пацификот";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangMkd()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangMkd()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangMkd(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMkd(), name: expectedName)),
          );
        });
        test("has translation for 'ml' locale", () {
          const expectedName = "യു.എസ്. ദ്വീപസമൂഹങ്ങൾ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangMal()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangMal()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangMal(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMal(), name: expectedName)),
          );
        });
        test("has translation for 'mn' locale", () {
          const expectedName = "Америкийн Нэгдсэн Улсын бага арлууд";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangMon()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangMon()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangMon(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMon(), name: expectedName)),
          );
        });
        test("has translation for 'mr' locale", () {
          const expectedName = "यू.एस. आउटलाइंग बेटे";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangMar()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangMar()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangMar(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMar(), name: expectedName)),
          );
        });
        test("has translation for 'ms' locale", () {
          const expectedName = "Kepulauan Terpencil A.S.";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangMsa()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangMsa()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangMsa(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMsa(), name: expectedName)),
          );
        });
        test("has translation for 'mt' locale", () {
          const expectedName = "Il-Gżejjer Minuri Mbiegħda tal-Istati Uniti";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangMlt()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangMlt()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangMlt(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMlt(), name: expectedName)),
          );
        });
        test("has translation for 'my' locale", () {
          const expectedName = "ယူနိုက်တက်စတိတ် ကျွန်းနိုင်ငံများ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangMya()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangMya()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangMya(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMya(), name: expectedName)),
          );
        });
        test("has translation for 'nb' locale", () {
          const expectedName = "USAs ytre øyer";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangNob()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangNob()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangNob(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangNob(), name: expectedName)),
          );
        });
        test("has translation for 'ne' locale", () {
          const expectedName = "संयुक्त राज्यका बाह्य टापुहरु";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangNep()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangNep()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangNep(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangNep(), name: expectedName)),
          );
        });
        test("has translation for 'nn' locale", () {
          const expectedName = "USAs ytre småøyar";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangNno()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangNno()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangNno(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangNno(), name: expectedName)),
          );
        });
        test("has translation for 'no' locale", () {
          const expectedName = "USAs ytre øyer";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangNor()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangNor()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangNor(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangNor(), name: expectedName)),
          );
        });
        test("has translation for 'or' locale", () {
          const expectedName = "ଯୁକ୍ତରାଷ୍ଟ୍ର ଆଉଟ୍‌ଲାଇଙ୍ଗ ଦ୍ଵୀପପୁଞ୍ଜ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangOri()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangOri()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangOri(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangOri(), name: expectedName)),
          );
        });
        test("has translation for 'pa' locale", () {
          const expectedName = "ਯੂ.ਐੱਸ. ਦੂਰ-ਦੁਰਾਡੇ ਟਾਪੂ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangPan()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangPan()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangPan(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangPan(), name: expectedName)),
          );
        });
        test("has translation for 'ps' locale", () {
          const expectedName = "د متحده ایالاتو ټاپوګان";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangPus()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangPus()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangPus(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangPus(), name: expectedName)),
          );
        });
        test("has translation for 'qu' locale", () {
          const expectedName = "Islas menores alejadas de los EE.UU.";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangQue()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangQue()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangQue(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangQue(), name: expectedName)),
          );
        });
        test("has translation for 'rm' locale", () {
          const expectedName =
              "Inslas pitschnas perifericas dals Stadis Unids da l’America";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangRoh()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangRoh()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangRoh(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangRoh(), name: expectedName)),
          );
        });
        test("has translation for 'ro' locale", () {
          const expectedName = "Insulele Îndepărtate ale S.U.A.";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangRon()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangRon()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangRon(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangRon(), name: expectedName)),
          );
        });
        test("has translation for 'sd' locale", () {
          const expectedName = "آمريڪي ٻاهريون ٻيٽ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangSnd()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangSnd()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangSnd(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSnd(), name: expectedName)),
          );
        });
        test("has translation for 'si' locale", () {
          const expectedName = "එක්සත් ජනපද ඈත දූපත්";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangSin()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangSin()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangSin(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSin(), name: expectedName)),
          );
        });
        test("has translation for 'sl' locale", () {
          const expectedName = "Stranski zunanji otoki Združenih držav";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangSlv()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangSlv()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangSlv(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSlv(), name: expectedName)),
          );
        });
        test("has translation for 'so' locale", () {
          const expectedName = "Jasiiradaha ka baxsan Maraykanka";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangSom()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangSom()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangSom(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSom(), name: expectedName)),
          );
        });
        test("has translation for 'sq' locale", () {
          const expectedName = "Ishujt Periferikë të SHBA-së";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangSqi()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangSqi()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangSqi(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSqi(), name: expectedName)),
          );
        });
        test("has translation for 'sw' locale", () {
          const expectedName = "Visiwa Vidogo vya Nje vya Marekani";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangSwa()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangSwa()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangSwa(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSwa(), name: expectedName)),
          );
        });
        test("has translation for 'ta' locale", () {
          const expectedName = "யூ.எஸ். வெளிப்புறத் தீவுகள்";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangTam()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangTam()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangTam(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTam(), name: expectedName)),
          );
        });
        test("has translation for 'te' locale", () {
          const expectedName = "సంయుక్త రాజ్య అమెరికా బయట ఉన్న దీవులు";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangTel()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangTel()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangTel(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTel(), name: expectedName)),
          );
        });
        test("has translation for 'tg' locale", () {
          const expectedName = "Ҷазираҳои Хурди Дурдасти ИМА";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangTgk()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangTgk()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangTgk(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTgk(), name: expectedName)),
          );
        });
        test("has translation for 'th' locale", () {
          const expectedName = "หมู่เกาะรอบนอกของสหรัฐอเมริกา";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangTha()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangTha()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangTha(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTha(), name: expectedName)),
          );
        });
        test("has translation for 'ti' locale", () {
          const expectedName = "ናይ ኣሜሪካ ፍንትት ዝበሉ ደሴታት";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangTir()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangTir()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangTir(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTir(), name: expectedName)),
          );
        });
        test("has translation for 'tk' locale", () {
          const expectedName = "ABŞ-nyň daşarky adalary";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangTuk()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangTuk()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangTuk(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTuk(), name: expectedName)),
          );
        });
        test("has translation for 'to' locale", () {
          const expectedName = "ʻOtumotu siʻi ʻo ʻAmelika";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangTon()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangTon()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangTon(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTon(), name: expectedName)),
          );
        });
        test("has translation for 'tt' locale", () {
          const expectedName = "АКШ Кече Читтәге утраулары";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangTat()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangTat()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangTat(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTat(), name: expectedName)),
          );
        });
        test("has translation for 'ug' locale", () {
          const expectedName = "ئا ق ش تاشقى ئاراللىرى";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangUig()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangUig()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangUig(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangUig(), name: expectedName)),
          );
        });
        test("has translation for 'uk' locale", () {
          const expectedName = "Віддалені острови США";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangUkr()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangUkr()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangUkr(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangUkr(), name: expectedName)),
          );
        });
        test("has translation for 'uz' locale", () {
          const expectedName = "AQSH yondosh orollari";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangUzb()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangUzb()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangUzb(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangUzb(), name: expectedName)),
          );
        });
        test("has translation for 'vi' locale", () {
          const expectedName = "Các tiểu đảo xa của Hoa Kỳ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangVie()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangVie()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangVie(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangVie(), name: expectedName)),
          );
        });
        test("has translation for 'wo' locale", () {
          const expectedName = "Duni Amerig Utar meer";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangWol()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangWol()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangWol(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangWol(), name: expectedName)),
          );
        });
        test("has translation for 'zu' locale", () {
          const expectedName = "I-U.S. Outlying Islands";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangZul()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangZul()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangZul(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangZul(), name: expectedName)),
          );
        });
        test("has translation for 'cv' locale", () {
          const expectedName = "Тулашӗнчи утравӗсем (АПШ)";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangChv()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangChv()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangChv(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangChv(), name: expectedName)),
          );
        });
        test("has translation for 'ff' locale", () {
          const expectedName = "𞤕𞤵𞤪𞤭𞥅𞤶𞤫 𞤁𞤢𞥄𞤴𞤭𞥅𞤯𞤫 𞤁𞤂𞤀";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangFul()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangFul()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangFul(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangFul(), name: expectedName)),
          );
        });
        test("has translation for 'ha' locale", () {
          const expectedName = "Rukunin Tsibirin U.S";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangHau()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangHau()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangHau(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangHau(), name: expectedName)),
          );
        });
        test("has translation for 'ia' locale", () {
          const expectedName = "Insulas peripheric del SUA";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangIna()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangIna()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangIna(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangIna(), name: expectedName)),
          );
        });
        test("has translation for 'ku' locale", () {
          const expectedName = "Giravên Biçûk ên Derveyî DYAyê";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangKur()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangKur()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangKur(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKur(), name: expectedName)),
          );
        });
        test("has translation for 'mi' locale", () {
          const expectedName = "Ngā Moutere Amerika o Waho";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangMri()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangMri()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangMri(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMri(), name: expectedName)),
          );
        });
        test("has translation for 'sc' locale", () {
          const expectedName = "Ìsulas perifèricas de sos Istados Unidos";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangSrd()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangSrd()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangSrd(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSrd(), name: expectedName)),
          );
        });
        test("has translation for 'tl' locale", () {
          const expectedName = "U.S. Outlying Islands";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangTgl()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangTgl()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangTgl(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTgl(), name: expectedName)),
          );
        });
        test("has translation for 'xh' locale", () {
          const expectedName = "I-U.S. Outlying Islands";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangXho()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangXho()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangXho(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangXho(), name: expectedName)),
          );
        });
        test("has translation for 'yo' locale", () {
          const expectedName = "Àwọn Erékùsù Kékèké Agbègbè US";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangYor()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangYor()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangYor(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangYor(), name: expectedName)),
          );
        });
        test("has translation for 'ab' locale", () {
          const expectedName = "Нҭыҵтәи малыетәи ад-қәа (ЕАШ)";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangAbk()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangAbk()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangAbk(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangAbk(), name: expectedName)),
          );
        });
        test("has translation for 'an' locale", () {
          const expectedName = "Islas perifericas d’os EUA";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangArg()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangArg()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangArg(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangArg(), name: expectedName)),
          );
        });
        test("has translation for 'ie' locale", () {
          const expectedName = "Insules periferic de USA";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangIle()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangIle()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangIle(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangIle(), name: expectedName)),
          );
        });
        test("has translation for 'oc' locale", () {
          const expectedName = "Isole Minori Outlying di i Stati Uniti";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangOci()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangOci()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangOci(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangOci(), name: expectedName)),
          );
        });
        test("has translation for 'ln' locale", () {
          const expectedName = "Bisanga Mokɛ́na Mosíká bya Lisangá lya Ameríka";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangLin()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangLin()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangLin(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangLin(), name: expectedName)),
          );
        });
        test("has translation for 'az_Cyrl' locale", () {
          const expectedName = "АБШ-а бағлы кичик адаҹыглар";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangAze(), script: ScriptCyrl()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangAze(), script: ScriptCyrl()),
          );
          expect(commonMapTranslation, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangAze(),
                name: expectedName,
                script: ScriptCyrl(),
              ),
            ),
          );
        });
        test("has translation for 'bn_IN' locale", () {
          const expectedName = "মার্কিন যুক্তরাষ্ট্রের পার্শ্ববর্তী দ্বীপপুঞ্জ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangBen(), country: CountryInd()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangBen(), country: CountryInd()),
          );
          expect(commonMapTranslation, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangBen(),
                name: expectedName,
                countryCode: "IN",
              ),
            ),
          );
        });
        test("has translation for 'bs_Cyrl' locale", () {
          const expectedName = "Мања удаљена острва САД";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangBos(), script: ScriptCyrl()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangBos(), script: ScriptCyrl()),
          );
          expect(commonMapTranslation, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangBos(),
                name: expectedName,
                script: ScriptCyrl(),
              ),
            ),
          );
        });
        test("has translation for 'kk_Cyrl' locale", () {
          const expectedName = "АҚШ-тың ішкі кіші аралдары";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangKaz(), script: ScriptCyrl()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangKaz(), script: ScriptCyrl()),
          );
          expect(commonMapTranslation, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangKaz(),
                name: expectedName,
                script: ScriptCyrl(),
              ),
            ),
          );
        });
        test("has translation for 'ks_Arab' locale", () {
          const expectedName = "یوٗنایٹِڑ سِٹیٹِس ماینَر آوُٹلییِنٛگ جٔزیٖرٕ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangKas(), script: ScriptArab()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangKas(), script: ScriptArab()),
          );
          expect(commonMapTranslation, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangKas(),
                name: expectedName,
                script: ScriptArab(),
              ),
            ),
          );
        });
        test("has translation for 'mn_Cyrl' locale", () {
          const expectedName = "АНУ-ын тойрсон арлууд";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangMon(), script: ScriptCyrl()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangMon(), script: ScriptCyrl()),
          );
          expect(commonMapTranslation, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangMon(),
                name: expectedName,
                script: ScriptCyrl(),
              ),
            ),
          );
        });
        test("has translation for 'ug_Arab' locale", () {
          const expectedName = "ئامېرىكا تەۋەلىكىدىكى سىرتقى كىچىك ئاراللار";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangUig(), script: ScriptArab()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangUig(), script: ScriptArab()),
          );
          expect(commonMapTranslation, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangUig(),
                name: expectedName,
                script: ScriptArab(),
              ),
            ),
          );
        });
        test("has translation for 'uz_Cyrl' locale", () {
          const expectedName = "АҚШ ёндош ороллари";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangUzb(), script: ScriptCyrl()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangUzb(), script: ScriptCyrl()),
          );
          expect(commonMapTranslation, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangUzb(),
                name: expectedName,
                script: ScriptCyrl(),
              ),
            ),
          );
        });
      },
      tags: "generated",
    );
