// ignore_for_file: avoid_print

import "package:languages_dart/languages_dart.dart";

void main() {
  final indoEuropeanLanguages = NaturalLanguage.list.where(
    (language) => language.family is IndoEuropean,
  );
  print(indoEuropeanLanguages); // Prints a list of Indo-European languages.
}
