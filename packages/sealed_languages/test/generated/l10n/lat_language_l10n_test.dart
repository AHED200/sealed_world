// ignore_for_file: lines_longer_than_80_chars, avoid-non-ascii-symbols

import "package:sealed_languages/src/data/natural_languages.data.dart";
import "package:sealed_languages/src/data/scripts.data.dart";
import "package:sealed_languages/src/helpers/extensions/translated_extension.dart";
import "package:sealed_languages/src/model/core/basic_locale.dart";
import "package:sealed_languages/src/model/translated_name.dart";

import "package:test/test.dart";

void main() => group(
      "$LangLat() L10N",
      () {
        const value = LangLat();

        test("has translation for 'en' locale", () {
          const expectedName = "Latin";

          final translated = value.maybeTranslation(
            const BasicLocale(LangEng()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangEng(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangEng(), name: expectedName)),
          );
        });
        test("has translation for 'af' locale", () {
          const expectedName = "Latyn";

          final translated = value.maybeTranslation(
            const BasicLocale(LangAfr()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangAfr(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangAfr(), name: expectedName)),
          );
        });
        test("has translation for 'am' locale", () {
          const expectedName = "ላቲንኛ";

          final translated = value.maybeTranslation(
            const BasicLocale(LangAmh()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangAmh(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangAmh(), name: expectedName)),
          );
        });
        test("has translation for 'ar' locale", () {
          const expectedName = "اللاتينية";

          final translated = value.maybeTranslation(
            const BasicLocale(LangAra()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangAra(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangAra(), name: expectedName)),
          );
        });
        test("has translation for 'az' locale", () {
          const expectedName = "latın";

          final translated = value.maybeTranslation(
            const BasicLocale(LangAze()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangAze(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangAze(), name: expectedName)),
          );
        });
        test("has translation for 'be' locale", () {
          const expectedName = "лацінская";

          final translated = value.maybeTranslation(
            const BasicLocale(LangBel()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangBel(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangBel(), name: expectedName)),
          );
        });
        test("has translation for 'bg' locale", () {
          const expectedName = "латински";

          final translated = value.maybeTranslation(
            const BasicLocale(LangBul()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangBul(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangBul(), name: expectedName)),
          );
        });
        test("has translation for 'bn' locale", () {
          const expectedName = "লাটিন";

          final translated = value.maybeTranslation(
            const BasicLocale(LangBen()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangBen(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangBen(), name: expectedName)),
          );
        });
        test("has translation for 'br' locale", () {
          const expectedName = "latin";

          final translated = value.maybeTranslation(
            const BasicLocale(LangBre()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangBre(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangBre(), name: expectedName)),
          );
        });
        test("has translation for 'bs' locale", () {
          const expectedName = "latinski";

          final translated = value.maybeTranslation(
            const BasicLocale(LangBos()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangBos(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangBos(), name: expectedName)),
          );
        });
        test("has translation for 'bs_Cyrl' locale", () {
          const expectedName = "латински";

          final translated = value.maybeTranslation(
            const BasicLocale(LangBos(), script: ScriptCyrl()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
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
        test("has translation for 'ca' locale", () {
          const expectedName = "llatí";

          final translated = value.maybeTranslation(
            const BasicLocale(LangCat()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangCat(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangCat(), name: expectedName)),
          );
        });
        test("has translation for 'cs' locale", () {
          const expectedName = "latina";

          final translated = value.maybeTranslation(
            const BasicLocale(LangCes()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangCes(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangCes(), name: expectedName)),
          );
        });
        test("has translation for 'cy' locale", () {
          const expectedName = "Lladin";

          final translated = value.maybeTranslation(
            const BasicLocale(LangCym()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangCym(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangCym(), name: expectedName)),
          );
        });
        test("has translation for 'da' locale", () {
          const expectedName = "latin";

          final translated = value.maybeTranslation(
            const BasicLocale(LangDan()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangDan(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangDan(), name: expectedName)),
          );
        });
        test("has translation for 'de' locale", () {
          const expectedName = "Latein";

          final translated = value.maybeTranslation(
            const BasicLocale(LangDeu()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangDeu(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangDeu(), name: expectedName)),
          );
        });
        test("has translation for 'dz' locale", () {
          const expectedName = "ལེ་ཊིན་ཁ";

          final translated = value.maybeTranslation(
            const BasicLocale(LangDzo()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangDzo(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangDzo(), name: expectedName)),
          );
        });
        test("has translation for 'ee' locale", () {
          const expectedName = "latin";

          final translated = value.maybeTranslation(
            const BasicLocale(LangEwe()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangEwe(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangEwe(), name: expectedName)),
          );
        });
        test("has translation for 'el' locale", () {
          const expectedName = "Λατινικά";

          final translated = value.maybeTranslation(
            const BasicLocale(LangEll()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangEll(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangEll(), name: expectedName)),
          );
        });
        test("has translation for 'eo' locale", () {
          const expectedName = "latino";

          final translated = value.maybeTranslation(
            const BasicLocale(LangEpo()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangEpo(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangEpo(), name: expectedName)),
          );
        });
        test("has translation for 'es' locale", () {
          const expectedName = "latín";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSpa()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSpa(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSpa(), name: expectedName)),
          );
        });
        test("has translation for 'et' locale", () {
          const expectedName = "ladina";

          final translated = value.maybeTranslation(
            const BasicLocale(LangEst()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangEst(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangEst(), name: expectedName)),
          );
        });
        test("has translation for 'eu' locale", () {
          const expectedName = "latina";

          final translated = value.maybeTranslation(
            const BasicLocale(LangEus()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangEus(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangEus(), name: expectedName)),
          );
        });
        test("has translation for 'fa' locale", () {
          const expectedName = "لاتینی";

          final translated = value.maybeTranslation(
            const BasicLocale(LangFas()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangFas(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangFas(), name: expectedName)),
          );
        });
        test("has translation for 'fi' locale", () {
          const expectedName = "latina";

          final translated = value.maybeTranslation(
            const BasicLocale(LangFin()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangFin(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangFin(), name: expectedName)),
          );
        });
        test("has translation for 'fo' locale", () {
          const expectedName = "latín";

          final translated = value.maybeTranslation(
            const BasicLocale(LangFao()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangFao(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangFao(), name: expectedName)),
          );
        });
        test("has translation for 'fr' locale", () {
          const expectedName = "latin";

          final translated = value.maybeTranslation(
            const BasicLocale(LangFra()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangFra(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangFra(), name: expectedName)),
          );
        });
        test("has translation for 'fy' locale", () {
          const expectedName = "Latyn";

          final translated = value.maybeTranslation(
            const BasicLocale(LangFry()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangFry(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangFry(), name: expectedName)),
          );
        });
        test("has translation for 'ga' locale", () {
          const expectedName = "Laidin";

          final translated = value.maybeTranslation(
            const BasicLocale(LangGle()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangGle(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangGle(), name: expectedName)),
          );
        });
        test("has translation for 'gd' locale", () {
          const expectedName = "Laideann";

          final translated = value.maybeTranslation(
            const BasicLocale(LangGla()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangGla(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangGla(), name: expectedName)),
          );
        });
        test("has translation for 'gl' locale", () {
          const expectedName = "latín";

          final translated = value.maybeTranslation(
            const BasicLocale(LangGlg()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangGlg(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangGlg(), name: expectedName)),
          );
        });
        test("has translation for 'gu' locale", () {
          const expectedName = "લેટિન";

          final translated = value.maybeTranslation(
            const BasicLocale(LangGuj()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangGuj(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangGuj(), name: expectedName)),
          );
        });
        test("has translation for 'he' locale", () {
          const expectedName = "לטינית";

          final translated = value.maybeTranslation(
            const BasicLocale(LangHeb()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangHeb(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangHeb(), name: expectedName)),
          );
        });
        test("has translation for 'hi' locale", () {
          const expectedName = "लैटिन";

          final translated = value.maybeTranslation(
            const BasicLocale(LangHin()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangHin(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangHin(), name: expectedName)),
          );
        });
        test("has translation for 'hr' locale", () {
          const expectedName = "latinski";

          final translated = value.maybeTranslation(
            const BasicLocale(LangHrv()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangHrv(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangHrv(), name: expectedName)),
          );
        });
        test("has translation for 'hu' locale", () {
          const expectedName = "latin";

          final translated = value.maybeTranslation(
            const BasicLocale(LangHun()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangHun(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangHun(), name: expectedName)),
          );
        });
        test("has translation for 'hy' locale", () {
          const expectedName = "լատիներեն";

          final translated = value.maybeTranslation(
            const BasicLocale(LangHye()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangHye(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangHye(), name: expectedName)),
          );
        });
        test("has translation for 'is' locale", () {
          const expectedName = "latína";

          final translated = value.maybeTranslation(
            const BasicLocale(LangIsl()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangIsl(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangIsl(), name: expectedName)),
          );
        });
        test("has translation for 'it' locale", () {
          const expectedName = "latino";

          final translated = value.maybeTranslation(
            const BasicLocale(LangIta()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangIta(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangIta(), name: expectedName)),
          );
        });
        test("has translation for 'ja' locale", () {
          const expectedName = "ラテン語";

          final translated = value.maybeTranslation(
            const BasicLocale(LangJpn()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangJpn(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangJpn(), name: expectedName)),
          );
        });
        test("has translation for 'ka' locale", () {
          const expectedName = "ლათინური";

          final translated = value.maybeTranslation(
            const BasicLocale(LangKat()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangKat(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKat(), name: expectedName)),
          );
        });
        test("has translation for 'kk' locale", () {
          const expectedName = "латын";

          final translated = value.maybeTranslation(
            const BasicLocale(LangKaz()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangKaz(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKaz(), name: expectedName)),
          );
        });
        test("has translation for 'km' locale", () {
          const expectedName = "ឡាតំាង";

          final translated = value.maybeTranslation(
            const BasicLocale(LangKhm()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangKhm(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKhm(), name: expectedName)),
          );
        });
        test("has translation for 'kn' locale", () {
          const expectedName = "ಲ್ಯಾಟಿನ್";

          final translated = value.maybeTranslation(
            const BasicLocale(LangKan()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangKan(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKan(), name: expectedName)),
          );
        });
        test("has translation for 'ko' locale", () {
          const expectedName = "라틴어";

          final translated = value.maybeTranslation(
            const BasicLocale(LangKor()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangKor(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKor(), name: expectedName)),
          );
        });
        test("has translation for 'ks' locale", () {
          const expectedName = "لاتیٖنی";

          final translated = value.maybeTranslation(
            const BasicLocale(LangKas()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangKas(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKas(), name: expectedName)),
          );
        });
        test("has translation for 'ky' locale", () {
          const expectedName = "латынча";

          final translated = value.maybeTranslation(
            const BasicLocale(LangKir()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangKir(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKir(), name: expectedName)),
          );
        });
        test("has translation for 'lb' locale", () {
          const expectedName = "Latäin";

          final translated = value.maybeTranslation(
            const BasicLocale(LangLtz()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangLtz(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangLtz(), name: expectedName)),
          );
        });
        test("has translation for 'lo' locale", () {
          const expectedName = "ລາຕິນ";

          final translated = value.maybeTranslation(
            const BasicLocale(LangLao()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangLao(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangLao(), name: expectedName)),
          );
        });
        test("has translation for 'lt' locale", () {
          const expectedName = "lotynų";

          final translated = value.maybeTranslation(
            const BasicLocale(LangLit()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangLit(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangLit(), name: expectedName)),
          );
        });
        test("has translation for 'lv' locale", () {
          const expectedName = "latīņu";

          final translated = value.maybeTranslation(
            const BasicLocale(LangLav()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangLav(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangLav(), name: expectedName)),
          );
        });
        test("has translation for 'mk' locale", () {
          const expectedName = "латински";

          final translated = value.maybeTranslation(
            const BasicLocale(LangMkd()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangMkd(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMkd(), name: expectedName)),
          );
        });
        test("has translation for 'ml' locale", () {
          const expectedName = "ലാറ്റിൻ";

          final translated = value.maybeTranslation(
            const BasicLocale(LangMal()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangMal(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMal(), name: expectedName)),
          );
        });
        test("has translation for 'mn' locale", () {
          const expectedName = "латин";

          final translated = value.maybeTranslation(
            const BasicLocale(LangMon()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangMon(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMon(), name: expectedName)),
          );
        });
        test("has translation for 'mr' locale", () {
          const expectedName = "लॅटिन";

          final translated = value.maybeTranslation(
            const BasicLocale(LangMar()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangMar(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMar(), name: expectedName)),
          );
        });
        test("has translation for 'my' locale", () {
          const expectedName = "လက်တင်";

          final translated = value.maybeTranslation(
            const BasicLocale(LangMya()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangMya(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMya(), name: expectedName)),
          );
        });
        test("has translation for 'nb' locale", () {
          const expectedName = "latin";

          final translated = value.maybeTranslation(
            const BasicLocale(LangNob()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangNob(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangNob(), name: expectedName)),
          );
        });
        test("has translation for 'ne' locale", () {
          const expectedName = "ल्याटिन";

          final translated = value.maybeTranslation(
            const BasicLocale(LangNep()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangNep(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangNep(), name: expectedName)),
          );
        });
        test("has translation for 'nl' locale", () {
          const expectedName = "Latijn";

          final translated = value.maybeTranslation(
            const BasicLocale(LangNld()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangNld(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangNld(), name: expectedName)),
          );
        });
        test("has translation for 'nn' locale", () {
          const expectedName = "latin";

          final translated = value.maybeTranslation(
            const BasicLocale(LangNno()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangNno(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangNno(), name: expectedName)),
          );
        });
        test("has translation for 'no' locale", () {
          const expectedName = "latin";

          final translated = value.maybeTranslation(
            const BasicLocale(LangNor()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangNor(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangNor(), name: expectedName)),
          );
        });
        test("has translation for 'om' locale", () {
          const expectedName = "Afaan Laatini";

          final translated = value.maybeTranslation(
            const BasicLocale(LangOrm()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangOrm(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangOrm(), name: expectedName)),
          );
        });
        test("has translation for 'or' locale", () {
          const expectedName = "ଲାଟିନ୍";

          final translated = value.maybeTranslation(
            const BasicLocale(LangOri()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangOri(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangOri(), name: expectedName)),
          );
        });
        test("has translation for 'os' locale", () {
          const expectedName = "латинаг";

          final translated = value.maybeTranslation(
            const BasicLocale(LangOss()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangOss(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangOss(), name: expectedName)),
          );
        });
        test("has translation for 'pa' locale", () {
          const expectedName = "ਲਾਤੀਨੀ";

          final translated = value.maybeTranslation(
            const BasicLocale(LangPan()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangPan(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangPan(), name: expectedName)),
          );
        });
        test("has translation for 'pl' locale", () {
          const expectedName = "łaciński";

          final translated = value.maybeTranslation(
            const BasicLocale(LangPol()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangPol(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangPol(), name: expectedName)),
          );
        });
        test("has translation for 'ps' locale", () {
          const expectedName = "لاتیني";

          final translated = value.maybeTranslation(
            const BasicLocale(LangPus()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangPus(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangPus(), name: expectedName)),
          );
        });
        test("has translation for 'pt' locale", () {
          const expectedName = "latim";

          final translated = value.maybeTranslation(
            const BasicLocale(LangPor()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangPor(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangPor(), name: expectedName)),
          );
        });
        test("has translation for 'rm' locale", () {
          const expectedName = "latin";

          final translated = value.maybeTranslation(
            const BasicLocale(LangRoh()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangRoh(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangRoh(), name: expectedName)),
          );
        });
        test("has translation for 'ro' locale", () {
          const expectedName = "latină";

          final translated = value.maybeTranslation(
            const BasicLocale(LangRon()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangRon(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangRon(), name: expectedName)),
          );
        });
        test("has translation for 'ru' locale", () {
          const expectedName = "латинский";

          final translated = value.maybeTranslation(
            const BasicLocale(LangRus()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangRus(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangRus(), name: expectedName)),
          );
        });
        test("has translation for 'rw' locale", () {
          const expectedName = "Ikilatini";

          final translated = value.maybeTranslation(
            const BasicLocale(LangKin()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangKin(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKin(), name: expectedName)),
          );
        });
        test("has translation for 'se' locale", () {
          const expectedName = "láhtengiella";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSme()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSme(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSme(), name: expectedName)),
          );
        });
        test("has translation for 'si' locale", () {
          const expectedName = "ලතින්";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSin()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSin(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSin(), name: expectedName)),
          );
        });
        test("has translation for 'sk' locale", () {
          const expectedName = "latinčina";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSlk()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSlk(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSlk(), name: expectedName)),
          );
        });
        test("has translation for 'sl' locale", () {
          const expectedName = "latinščina";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSlv()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSlv(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSlv(), name: expectedName)),
          );
        });
        test("has translation for 'sq' locale", () {
          const expectedName = "latinisht";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSqi()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSqi(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSqi(), name: expectedName)),
          );
        });
        test("has translation for 'sr' locale", () {
          const expectedName = "латински";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSrp()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSrp(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSrp(), name: expectedName)),
          );
        });
        test("has translation for 'sr_Latn' locale", () {
          const expectedName = "latinski";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSrp(), script: ScriptLatn()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangSrp(),
                name: expectedName,
                script: ScriptLatn(),
              ),
            ),
          );
        });
        test("has translation for 'sv' locale", () {
          const expectedName = "latin";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSwe()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSwe(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSwe(), name: expectedName)),
          );
        });
        test("has translation for 'sw' locale", () {
          const expectedName = "Kilatini";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSwa()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSwa(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSwa(), name: expectedName)),
          );
        });
        test("has translation for 'ta' locale", () {
          const expectedName = "லத்தின்";

          final translated = value.maybeTranslation(
            const BasicLocale(LangTam()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangTam(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTam(), name: expectedName)),
          );
        });
        test("has translation for 'te' locale", () {
          const expectedName = "లాటిన్";

          final translated = value.maybeTranslation(
            const BasicLocale(LangTel()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangTel(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTel(), name: expectedName)),
          );
        });
        test("has translation for 'th' locale", () {
          const expectedName = "ละติน";

          final translated = value.maybeTranslation(
            const BasicLocale(LangTha()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangTha(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTha(), name: expectedName)),
          );
        });
        test("has translation for 'ti' locale", () {
          const expectedName = "ላቲንኛ";

          final translated = value.maybeTranslation(
            const BasicLocale(LangTir()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangTir(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTir(), name: expectedName)),
          );
        });
        test("has translation for 'to' locale", () {
          const expectedName = "lea fakalatina";

          final translated = value.maybeTranslation(
            const BasicLocale(LangTon()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangTon(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTon(), name: expectedName)),
          );
        });
        test("has translation for 'tr' locale", () {
          const expectedName = "Latince";

          final translated = value.maybeTranslation(
            const BasicLocale(LangTur()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangTur(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTur(), name: expectedName)),
          );
        });
        test("has translation for 'ug' locale", () {
          const expectedName = "لاتىنچە";

          final translated = value.maybeTranslation(
            const BasicLocale(LangUig()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangUig(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangUig(), name: expectedName)),
          );
        });
        test("has translation for 'uk' locale", () {
          const expectedName = "латинська";

          final translated = value.maybeTranslation(
            const BasicLocale(LangUkr()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangUkr(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangUkr(), name: expectedName)),
          );
        });
        test("has translation for 'ur' locale", () {
          const expectedName = "لاطینی";

          final translated = value.maybeTranslation(
            const BasicLocale(LangUrd()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangUrd(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangUrd(), name: expectedName)),
          );
        });
        test("has translation for 'uz' locale", () {
          const expectedName = "lotincha";

          final translated = value.maybeTranslation(
            const BasicLocale(LangUzb()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangUzb(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangUzb(), name: expectedName)),
          );
        });
        test("has translation for 'uz_Cyrl' locale", () {
          const expectedName = "Лотинча";

          final translated = value.maybeTranslation(
            const BasicLocale(LangUzb(), script: ScriptCyrl()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
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
        test("has translation for 'vi' locale", () {
          const expectedName = "Tiếng La-tinh";

          final translated = value.maybeTranslation(
            const BasicLocale(LangVie()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangVie(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangVie(), name: expectedName)),
          );
        });
        test("has translation for 'yi' locale", () {
          const expectedName = "לאטייניש";

          final translated = value.maybeTranslation(
            const BasicLocale(LangYid()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangYid(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangYid(), name: expectedName)),
          );
        });
        test("has translation for 'yo' locale", () {
          const expectedName = "Èdè Latini";

          final translated = value.maybeTranslation(
            const BasicLocale(LangYor()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangYor(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangYor(), name: expectedName)),
          );
        });
        test("has translation for 'zh' locale", () {
          const expectedName = "拉丁文";

          final translated = value.maybeTranslation(
            const BasicLocale(LangZho()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangZho(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangZho(), name: expectedName)),
          );
        });
        test("has translation for 'zu' locale", () {
          const expectedName = "isi-Latin";

          final translated = value.maybeTranslation(
            const BasicLocale(LangZul()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangZul(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangZul(), name: expectedName)),
          );
        });
        test("has translation for 'as' locale", () {
          const expectedName = "লেটিন";

          final translated = value.maybeTranslation(
            const BasicLocale(LangAsm()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangAsm(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangAsm(), name: expectedName)),
          );
        });
        test("has translation for 'ce' locale", () {
          const expectedName = "латинан";

          final translated = value.maybeTranslation(
            const BasicLocale(LangChe()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangChe(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangChe(), name: expectedName)),
          );
        });
        test("has translation for 'ff_Adlm' locale", () {
          const expectedName = "𞤂𞤢𞤼𞤫𞤲𞤪𞤫";

          final translated = value.maybeTranslation(
            const BasicLocale(LangFul(), script: ScriptAdlm()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangFul(),
                name: expectedName,
                script: ScriptAdlm(),
              ),
            ),
          );
        });
        test("has translation for 'ha' locale", () {
          const expectedName = "Dan Kabilar Latin";

          final translated = value.maybeTranslation(
            const BasicLocale(LangHau()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangHau(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangHau(), name: expectedName)),
          );
        });
        test("has translation for 'ia' locale", () {
          const expectedName = "latino";

          final translated = value.maybeTranslation(
            const BasicLocale(LangIna()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangIna(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangIna(), name: expectedName)),
          );
        });
        test("has translation for 'ig' locale", () {
          const expectedName = "Latịn";

          final translated = value.maybeTranslation(
            const BasicLocale(LangIbo()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangIbo(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangIbo(), name: expectedName)),
          );
        });
        test("has translation for 'ku' locale", () {
          const expectedName = "latînî";

          final translated = value.maybeTranslation(
            const BasicLocale(LangKur()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangKur(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKur(), name: expectedName)),
          );
        });
        test("has translation for 'mi' locale", () {
          const expectedName = "Rātini";

          final translated = value.maybeTranslation(
            const BasicLocale(LangMri()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangMri(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMri(), name: expectedName)),
          );
        });
        test("has translation for 'qu' locale", () {
          const expectedName = "Latín Simi";

          final translated = value.maybeTranslation(
            const BasicLocale(LangQue()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangQue(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangQue(), name: expectedName)),
          );
        });
        test("has translation for 'sc' locale", () {
          const expectedName = "latinu";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSrd()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSrd(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSrd(), name: expectedName)),
          );
        });
        test("has translation for 'sd' locale", () {
          const expectedName = "لاطيني";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSnd()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSnd(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSnd(), name: expectedName)),
          );
        });
        test("has translation for 'so' locale", () {
          const expectedName = "Laatiin";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSom()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSom(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSom(), name: expectedName)),
          );
        });
        test("has translation for 'tg' locale", () {
          const expectedName = "лотинӣ";

          final translated = value.maybeTranslation(
            const BasicLocale(LangTgk()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangTgk(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTgk(), name: expectedName)),
          );
        });
        test("has translation for 'tk' locale", () {
          const expectedName = "latyn dili";

          final translated = value.maybeTranslation(
            const BasicLocale(LangTuk()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangTuk(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTuk(), name: expectedName)),
          );
        });
        test("has translation for 'tt' locale", () {
          const expectedName = "латин";

          final translated = value.maybeTranslation(
            const BasicLocale(LangTat()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangTat(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTat(), name: expectedName)),
          );
        });
        test("has translation for 'id' locale", () {
          const expectedName = "Latin";

          final translated = value.maybeTranslation(
            const BasicLocale(LangInd()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangInd(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangInd(), name: expectedName)),
          );
        });
        test("has translation for 'ms' locale", () {
          const expectedName = "Latin";

          final translated = value.maybeTranslation(
            const BasicLocale(LangMsa()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangMsa(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMsa(), name: expectedName)),
          );
        });
        test("has translation for 'tl' locale", () {
          const expectedName = "Latin";

          final translated = value.maybeTranslation(
            const BasicLocale(LangTgl()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangTgl(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTgl(), name: expectedName)),
          );
        });
      },
      tags: "generated",
    );
