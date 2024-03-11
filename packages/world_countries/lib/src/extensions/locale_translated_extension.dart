import "package:flutter/foundation.dart";
import "package:sealed_countries/sealed_countries.dart";

import "../models/locale/typed_locale.dart";

/// An extension on the [Translated] classes that provides methods
/// for translating it.
extension LocaleTranslatedExtension<T extends TranslatedName> on Translated<T> {
  /// Translates the [Translated] object to the specified [locale].
  ///
  /// The [locale] parameter is the [TypedLocale] representing the desired
  /// locale. The [useLanguageFallback] parameter determines whether to use the
  /// fallback language if the translation is not available.
  ///
  /// Returns the translated object of type `T`, or `null` if the translation is
  /// not available.
  @optionalTypeArgs
  T? maybeTranslate(TypedLocale? locale, {bool useLanguageFallback = true}) {
    final language = locale?.language;

    return language != null
        ? maybeTranslation(
            language,
            countryCode: locale?.countryCode,
            script: locale?.script,
            useLanguageFallback: useLanguageFallback,
          )
        : null;
  }

  /// Translates the [Translated] object to the specified [locale].
  ///
  /// The [locale] parameter is the [TypedLocale] representing the desired
  /// locale. The [orElse] parameter is the fallback language to be used if the
  /// translation is not available.
  ///
  /// Returns the translated object of type `T`, or the [orElse] language
  /// translation if the locale translation is not available.
  T translate(TypedLocale locale, {NaturalLanguage orElse = const LangEng()}) =>
      translation(
        locale.language,
        countryCode: locale.countryCode,
        script: locale.script,
        orElse: orElse,
      );
}
