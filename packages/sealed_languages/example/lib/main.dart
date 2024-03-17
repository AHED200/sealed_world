// ignore_for_file: avoid_print, prefer-match-file-name
import "package:sealed_languages/sealed_languages.dart";

void main() {
  final indoEuropeanLanguages = NaturalLanguage.list.where(
    (language) => language.family is IndoEuropean,
  );
  // Prints a list of Indo-European languages:
  print(indoEuropeanLanguages);
  // (Language(name: Avestan), Language(name: Afrikaans),
  // ...
  // Language(name: Walloon), Language(name: Yiddish).

  const eng = "Eng";
  final fromCode = NaturalLanguage.fromCode(eng);
  print("${fromCode.name}: ${fromCode.codeShort}"); // Prints: "English: EN".
  print(fromCode.isEng); // Prints: "true".

  /// For a O(1) access time, you can use: .map, .codeMap or .codeShortMap.
  print(fromCode == NaturalLanguage.map[eng]); // Prints: "true".

  final script = Script.fromCodeNumeric("215");
  print(script == Script.codeMap["Latn"]); // Prints: "true".
  print("${script.name}: ${script.code}"); // Prints: "Latin: Latn".

  final russian = NaturalLanguage.fromCodeShort("ru");
  print("${russian.name}: ${russian.code}"); // Prints: "Russian: RUS".

  /// Translations of the language name.
  print(russian.translations.length); // Prints: 120.

  final maybeCzech = NaturalLanguage.maybeFromValue(
    "CZE",
    where: (language) => language.bibliographicCode,
  );

  // This will print: "Native name: čeština".
  print("Native name: ${maybeCzech?.namesNative.first}");

  // Contains functional style methods (when, whenOrNull, map, etc).
  print(maybeCzech?.maybeWhen(langCes: () => "Ahoj!", orElse: () => "Hey!"));

  print(NaturalLanguage.list.length); // Prints: "184".

  /// Translations:

  // Prints Slovak translations of all available languages.
  for (final language in NaturalLanguage.list) {
    print(
      """Slovak name of ${language.name}: ${language.maybeTranslation(const LangSlk())?.name}""",
    );
  }

  // Distinguishes country code in translations.
  print(maybeCzech?.maybeTranslation(const LangPor())?.name); // Prints tcheco.
  print(
    maybeCzech?.maybeTranslation(const LangPor(), countryCode: "PT")?.name,
  ); // Prints "checo".

  // Distinguishes script in translations.
  print(maybeCzech?.maybeTranslation(const LangSrp())?.name); // Prints "чешки".
  print(
    maybeCzech
        ?.maybeTranslation(const LangSrp(), script: const ScriptLatn())
        ?.name, // Prints "češki".
  );

  print(const _LangCustom().name); // Prints "Custom".
}

/// Creates a instance of the custom language with permissive constructor.
class _LangCustom extends NaturalLanguage {
  const _LangCustom()
      : super.permissive(
          name: "Custom",
          code: "CUSTOM",
          codeShort: "CT",
          namesNative: const ["Custom"],
        );

  @override
  List<TranslatedName> get translations =>
      const [TranslatedName(LangEng(), name: "Custom English Translation")];
}
