part of "../country.dart";

/// A class that represents a country in the world.
///
/// The `WorldCountry` class is a class that represents a country in the world.
/// It extends the `Country` class, which represents a country. It consists of
/// various fields that describe the country, such as its name, code,
/// currencies, languages, and more. The `WorldCountry` class includes methods
/// to create a new country object from its code or code short, and a static
/// method `maybeFromValue` to create a new country object from a value, such as
/// a string, while handling null values. The `WorldCountry` class also includes
/// methods to convert the country object to a string representation, and a
/// static constant `list` that contains all of the countries of the world.
///
/// Example usage:
///
/// ```dart
/// final spain = WorldCountry.fromCode("ESP");
/// print(spain.name); // Output: "Spain"
///
/// final japan = WorldCountry.fromCodeShort("JP");
/// print(japan.name); // Output: "Japan"
///
/// final unknown = WorldCountry.maybeFromValue<int>(42);
/// print(unknown); // Output: null
/// ```
class WorldCountry extends Country
    implements
        IsoTranslated<TranslatedName, CountryName>,
        JsonEncodable<WorldCountry> {
  /// {@template country_constructor}
  /// Creates a new [WorldCountry] object with the given properties.
  ///
  /// The `name` parameter is required and must not be empty. The
  /// `altSpellings`, `languages`, `namesNative`, `translations`, `demonyms`,
  /// `timezones`, `bordersCodes`, and `tld` parameters should not be `null`.
  /// The `codeShort`, `codeNumeric`, `code`, `emoji`, `idd`, `latLng`, `maps`,
  /// `areaMetric`, `population`, and `startOfWeek` parameters should not be
  /// `null` and must be valid values.
  /// {@endtemplate}
  const WorldCountry({
    required super.name,
    required this.altSpellings,
    required this.areaMetric,
    required this.code, // CCA3.
    required this.codeNumeric, // CCN3.
    required this.codeShort, // CCA2.
    required this.continent,
    required this.emoji,
    required this.idd, // International Direct Dialing.
    required this.languages,
    required this.latLng,
    required this.maps,
    required this.namesNative,
    required this.population,
    required this.timezones,
    required this.tld, // Top Level Domain.
    required this.translations,
    required this.demonyms,
    this.currencies,
    this.capitalInfo,
    this.car = const Car(),
    this.cioc, // International Olympic Committee.
    this.fifa,
    this.gini, // Gini Coefficient.
    this.hasCoatOfArms = true,
    this.independent = true,
    this.landlocked = false,
    this.postalCode,
    this.bordersCodes,
    this.startOfWeek = Weekday.monday,
    this.subregion,
    this.unMember = true,
    this.regionalBlocs,
  })  : assert(
          code.length == IsoStandardized.codeLength,
          """`code` should be exactly ${IsoStandardized.codeLength} characters long!""",
        ),
        assert(
          codeShort.length == IsoStandardized.codeShortLength,
          """`codeShort` should be exactly ${IsoStandardized.codeShortLength} characters long!""",
        ),
        assert(
          codeNumeric.length == IsoStandardized.codeLength,
          """`codeNumeric` should be exactly ${IsoStandardized.codeLength} characters long!""",
        ),
        assert(emoji.length > 0, "`emoji` should not be empty!"),
        assert(tld != const <String>[], "`tld` should not be empty!"),
        assert(
          namesNative != const <CountryName>[],
          "`namesNative` should not be empty!",
        ),
        assert(
          altSpellings != const <String>[],
          "`altSpellings` should not be empty!",
        ),
        assert(
          languages != const <NaturalLanguage>[],
          "`languages` should not be empty!",
        ),
        assert(
          timezones != const <String>[],
          "`timezones` should not be empty!",
        ),
        assert(
          translations != const <TranslatedName>[],
          "`translations` should not be empty!",
        ),
        assert(
          demonyms != const <Demonyms>[],
          "`demonyms` should not be empty!",
        ),
        assert(cioc == null || cioc.length > 0, "`cioc` should not be empty!"),
        assert(fifa == null || fifa.length > 0, "`fifa` should not be empty!"),
        assert(
          bordersCodes != const <String>[],
          "`bordersCodes` should not be empty!",
        ),
        assert(
          regionalBlocs != const <RegionalBloc>[],
          "`regionalBlocs` should not be empty!",
        );

  /// {@macro permissive_constructor}
  /// {@macro country_constructor}
  const WorldCountry.permissive({
    required super.name,
    required this.code,
    this.altSpellings = const [],
    this.areaMetric = 1,
    this.codeNumeric = "",
    this.codeShort = "",
    this.continent = const Europe(),
    this.emoji = "🏳️", // ignore: avoid-non-ascii-symbols, for permissive one.
    this.idd = const Idd(root: 0, suffixes: [0]),
    this.languages = const [],
    this.latLng = const LatLng(0, 0),
    this.maps = const Maps(googleMaps: " ", openStreetMaps: " "),
    this.namesNative = const [],
    this.population = 1,
    this.timezones = const [],
    this.tld = const [],
    this.translations = const [],
    this.demonyms = const [],
    this.currencies,
    this.capitalInfo,
    this.car = const Car(),
    this.cioc, // International Olympic Committee.
    this.fifa,
    this.gini, // Gini Coefficient.
    this.hasCoatOfArms = true,
    this.independent = true,
    this.landlocked = false,
    this.postalCode,
    this.bordersCodes,
    this.startOfWeek = Weekday.monday,
    this.subregion,
    this.unMember = true,
    this.regionalBlocs,
  });

  /// Returns an [WorldCountry] object from the given [code]
  /// ISO 3166-1 Alpha-3 code.
  ///
  /// The [code] parameter is required and must be a valid country code object
  /// representing a three-letter ISO 3166-1 Alpha-3 code.
  /// {@macro any_code_object}
  /// Returns a [WorldCountry] object that represents the country with the given
  /// code or throws a `StateError` if no such country exists.
  ///
  /// The optional [countries] parameter can be used to specify a list of
  /// [WorldCountry] objects to search through.
  /// {@macro optional_instances_array_parameter}
  factory WorldCountry.fromCode(
    Object code, [
    Iterable<WorldCountry>? countries,
  ]) =>
      countries == null
          ? codeMap.findByCodeOrThrow(code)
          : countries.firstIsoWhereCode(code.toUpperCaseIsoCode());

  /// Returns an [WorldCountry] object from the given `codeShort`
  /// ISO 3166-1 Alpha-2 code.
  ///
  /// The [codeShort] parameter is required and must be a valid country code
  /// object representing a two-letter ISO 3166-1 Alpha-2 code.
  /// {@macro any_code_object}
  /// Returns a [WorldCountry] object that represents the country with the given
  /// code or throws a `StateError` if no such country exists.
  ///
  /// The optional [countries] parameter can be used to specify a list of
  /// [WorldCountry] objects to search through.
  /// {@macro optional_instances_array_parameter}
  factory WorldCountry.fromCodeShort(
    Object codeShort, [
    Iterable<WorldCountry>? countries,
  ]) =>
      countries == null
          ? codeShortMap.findByCodeOrThrow(codeShort)
          : countries.firstIsoWhereCodeOther(codeShort.toUpperCaseIsoCode());

  /// Returns an [WorldCountry] object from the given `code` ISO 3166-1 code.
  ///
  /// The [codeNumeric] parameter is required and must be a valid country code
  /// object representing a three-digit ISO 3166-1 numeric code.
  /// {@macro any_code_object}
  /// Returns a [WorldCountry] object that represents the country with the given
  /// code or throws a `StateError` if no such country exists.
  ///
  /// The optional [countries] parameter can be used to specify a list of
  /// [WorldCountry] objects to search through.
  /// {@macro optional_instances_array_parameter}
  factory WorldCountry.fromCodeNumeric(
    Object codeNumeric, [
    Iterable<WorldCountry>? countries,
  ]) {
    if (countries == null) return codeNumericMap.findByCodeOrThrow(codeNumeric);
    final trimmedCode = codeNumeric.toUpperCaseIsoCode();

    return countries
        .firstIsoWhere((country) => country.codeNumeric == trimmedCode);
  }

  /// Returns an instance of the [WorldCountry] class from any valid
  /// ISO 3166 code.
  ///
  /// The [code] parameter is required and must be a valid country code object
  /// representing a ISO 3166-1 code.
  /// {@macro any_code_object}
  /// Returns a [WorldCountry] object that represents the country with the given
  /// code or throws a `StateError` if no such country exists.
  ///
  /// The optional [countries] parameter can be used to specify a list of
  /// [WorldCountry] objects to search through.
  /// {@macro optional_instances_array_parameter}
  ///
  /// Example:
  /// ```dart
  /// final country = WorldCountry.fromAnyCode("BLR");
  /// ```
  ///
  /// In the above example, the `fromAnyCode` factory method is called with the
  /// code "BLR". It uses the `maybeMapIsoCode` method to determine the
  /// appropriate mapping for the code. If the code is numeric, it calls the
  /// `fromCodeNumeric` factory method to create a [WorldCountry] instance.
  /// Otherwise, it calls the `fromCode` factory method to create a
  /// [WorldCountry] instance. The resulting [WorldCountry] instance is assigned
  /// to the `code` variable.
  factory WorldCountry.fromAnyCode(
    Object code, [
    Iterable<WorldCountry>? countries,
  ]) =>
      countries == null
          ? map.findByCodeOrThrow(code)
          : code.toUpperCaseIsoCode().maybeMapIsoCode(
                orElse: (regular) => WorldCountry.fromCode(regular, countries),
                short: (short) => WorldCountry.fromCodeShort(short, countries),
                numeric: (numeric) =>
                    WorldCountry.fromCodeNumeric(numeric, countries),
              );

  /// The native names of the country.
  @override
  final List<CountryName> namesNative;

  /// The top level domain names for the country.
  final List<String> tld;

  /// The three-letter ISO 3166-1 Alpha-3 code of the country.
  @override
  final String code;

  /// The three-digit ISO 3166-1 Numeric code of the country.
  final String codeNumeric;

  /// The two-letter ISO 3166-1 Alpha-2 code of the country.
  final String codeShort;

  /// The International Olympic Committee code of the country.
  final String? cioc;

  /// Whether the country is an independent state.
  final bool independent;

  /// Whether the country is a member of the United Nations.
  final bool unMember;

  /// The currencies used in the country.
  final List<FiatCurrency>? currencies;

  /// The international direct dialing codes for the country.
  final Idd idd;

  /// The alternate spellings of the country name.
  final List<String> altSpellings;

  /// The continent where the country is located.
  final Continent continent;

  /// The subregion where the country is located.
  final SubRegion? subregion;

  /// The official languages spoken in the country.
  final List<NaturalLanguage> languages;

  /// The translations of the country name.
  @override
  final List<TranslatedName> translations;

  /// The geographic coordinates of the country.
  final LatLng latLng;

  /// Whether the country is landlocked.
  final bool landlocked;

  /// The codes of the countries that share borders with this country.
  final List<String>? bordersCodes;

  /// The area of the country in square kilometers.
  final double areaMetric;

  /// The demonym names for the people of the country.
  final List<Demonyms> demonyms;

  /// The emoji flag for the country.
  final String emoji;

  /// The maps of the country.
  final Maps maps;

  /// The population of the country.
  final int population;

  /// The Gini coefficient of the country.
  final Gini? gini;

  /// The FIFA code of the country.
  final String? fifa;

  /// The car information of the country.
  final Car car;

  /// The time zones of the country.
  final List<String> timezones;

  /// Whether the country has an official coat of arms.
  final bool hasCoatOfArms;

  /// The first day of the week in the country.
  final Weekday startOfWeek;

  /// The capital city information of the country.
  final CapitalInfo? capitalInfo;

  /// The postal code information of the country.
  final PostalCode? postalCode;

  /// The regional blocs of the country.
  final List<RegionalBloc>? regionalBlocs;

  /// The two-letter ISO 3166-1 Alpha-2 code of the country.
  @override
  String get codeOther => codeShort;

  @override
  String get internationalName => name.common;

  @override
  String toString({bool short = true}) => short
      ? super.toString()
      : '''WorldCountry(name: $name, namesNative: $namesNative, tld: ${jsonEncode(tld)}, code: "$code", codeNumeric: "$codeNumeric", codeShort: "$codeShort", cioc: ${cioc == null ? cioc : '"$cioc"'}, independent: $independent, unMember: $unMember, currencies: ${currencies?.toInstancesString()}, idd: $idd, altSpellings: ${jsonEncode(altSpellings)}, continent: ${continent.runtimeType}(), subregion: ${subregion == null ? subregion : '${subregion?.runtimeType}()'}, languages: ${languages.toInstancesString()}, translations: ${code.toLowerCase()}CountryTranslations, latLng: $latLng, landlocked: $landlocked, bordersCodes: ${jsonEncode(bordersCodes)}, areaMetric: $areaMetric, demonyms: $demonyms, emoji: "$emoji", maps: $maps, population: $population, gini: $gini, fifa: ${fifa == null ? fifa : '"$fifa"'}, car: $car, timezones: ${jsonEncode(timezones)}, hasCoatOfArms: $hasCoatOfArms, startOfWeek: $startOfWeek, capitalInfo: ${capitalInfo?.toString(short: false)}, postalCode: $postalCode, regionalBlocs: ${regionalBlocs?.toInstancesString()})''';

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) => codec.encode(toMap());

  /// Returns a [WorldCountry] object that represents the country with the given
  /// `value`.
  ///
  /// The `value` parameter is required and should not be `null`. The `where`
  /// parameter is an optional function that takes a [WorldCountry] object as
  /// its parameter and returns a value to compare with `value`. If `where` is
  /// `null`, the `code` field of the [WorldCountry] object will be used. The
  /// `countries` parameter is an optional iterable of [WorldCountry] objects
  /// that defaults to `list`. Returns a [WorldCountry] object that represents
  /// the country with the given `value`, or `null` if no such country exists.
  static WorldCountry? maybeFromValue<T extends Object>(
    T value, {
    T? Function(WorldCountry country)? where,
    Iterable<WorldCountry> countries = list,
  }) {
    countries.assertNotEmpty();

    for (final country in countries) {
      final expectedValue = where?.call(country) ?? country.code;
      if (expectedValue == value) return country;
    }

    return null;
  }

  /// Returns an nullable [WorldCountry] object from the given ISO 3166-1 code.
  ///
  /// The [code] parameter is required and must be a valid country code object
  /// representing a three-letter ISO 3166-1 Alpha-3 code.
  /// {@macro any_code_object}
  /// Returns a [WorldCountry] object that represents the country with the given
  /// code or `null` if no such country exists.
  ///
  /// The optional [countries] parameter can be used to specify a list of
  /// [WorldCountry] objects to search through.
  /// {@macro optional_instances_array_parameter}
  static WorldCountry? maybeFromCode(
    Object? code, [
    Iterable<WorldCountry>? countries,
  ]) {
    if (countries == null) return codeMap.maybeFindByCode(code);
    final string = code
        ?.toUpperCaseIsoCode()
        .maybeToValidIsoCode(exactLength: IsoStandardized.codeLength);

    return countries.firstIsoWhereCodeOrNull(string);
  }

  /// Returns an [WorldCountry] object from the given [codeShort]
  /// ISO 3166-1 Alpha-2 code, or `null` if no such instance exists.
  ///
  /// The [codeShort] parameter is required and must be a valid country code
  /// object representing a two-letter ISO 3166-1 Alpha-2 code.
  /// {@macro any_code_object}
  /// Returns a [WorldCountry] object that represents the country with the given
  /// code or `null` if no such country exists.
  ///
  /// The optional [countries] parameter can be used to specify a list of
  /// [WorldCountry] objects to search through.
  /// {@macro optional_instances_array_parameter}
  static WorldCountry? maybeFromCodeShort(
    Object? codeShort, [
    Iterable<WorldCountry>? countries,
  ]) {
    if (countries == null) return codeShortMap.maybeFindByCode(codeShort);
    final string = codeShort
        ?.toUpperCaseIsoCode()
        .maybeToValidIsoCode(exactLength: IsoStandardized.codeShortLength);

    return countries.firstIsoWhereCodeOtherOrNull(string);
  }

  /// Returns an [WorldCountry] object from the given `code` ISO 3166-1 code,
  /// or `null` if no such instance exists.
  ///
  /// The [codeNumeric] parameter is required and must be a valid country code
  /// object representing a three-digit ISO 3166-1 numeric code.
  /// {@macro any_code_object}
  /// Returns a [WorldCountry] object that represents the country with the given
  /// code or `null` if no such country exists.
  ///
  /// The optional [countries] parameter can be used to specify a list of
  /// [WorldCountry] objects to search through.
  /// {@macro optional_instances_array_parameter}
  static WorldCountry? maybeFromCodeNumeric(
    Object codeNumeric, [
    Iterable<WorldCountry>? countries,
  ]) {
    if (countries == null) return codeNumericMap.maybeFindByCode(codeNumeric);
    final trimmedCode = codeNumeric.toUpperCaseIsoCode().maybeToValidIsoCode(
          exactLength: IsoStandardized.codeLength,
        );

    return countries
        .firstIsoWhereOrNull((country) => country.codeNumeric == trimmedCode);
  }

  /// Returns a [WorldCountry] instance that corresponds to the given code, or
  /// `null` if no such instance exists.
  ///
  /// The [code] parameter is required and must be a valid country code object
  /// representing a ISO 3166-1 country code.
  /// {@macro any_code_object}
  /// Returns a [WorldCountry] object that represents the country with the given
  /// code or `null` if no such country exists.
  ///
  /// The optional [countries] parameter can be used to specify a list of
  /// [WorldCountry] objects to search through.
  /// {@macro optional_instances_array_parameter}
  ///
  /// Example:
  /// ```dart
  /// WorldCountry? blr = WorldCountry.maybeFromAnyCode(CountryEnum.blr.name);
  /// print(blr != null) // Prints: true.
  /// ```
  ///
  /// In the above example, the `maybeFromAnyCode` method is called with the
  /// value "eur". It uses the `maybeMapIsoCode` method to determine the
  /// appropriate mapping for the value. If the value is numeric, it compares it
  /// with the `codeNumeric` property of each [WorldCountry] instance.
  /// If the value is two characters code, it compares it
  /// with the `codeShort` property of each [WorldCountry] instance.
  /// Otherwise, it compares it with the uppercase version of the `code`
  /// property of each [WorldCountry] instance. The resulting [WorldCountry]
  /// instance is assigned to the `country` variable.
  static WorldCountry? maybeFromAnyCode(
    Object? code, [
    Iterable<WorldCountry>? countries,
  ]) =>
      countries == null
          ? map.maybeFindByCode(code)
          : code?.toUpperCaseIsoCode().maybeMapIsoCode(
                orElse: (regular) =>
                    WorldCountry.maybeFromCode(regular, countries),
                short: (short) =>
                    WorldCountry.maybeFromCodeShort(short, countries),
                numeric: (numeric) =>
                    WorldCountry.maybeFromCodeNumeric(numeric, countries),
              );

  /// The general standard ISO code for countries, defined as ISO 3166-1.
  static const standardGeneralName = "3166-1";

  /// The standard ISO code name for countries, defined as ISO 3166-1 Alpha-3.
  static const standardCodeName = "$standardGeneralName Alpha-3";

  /// The standard ISO code name for countries, defined as ISO 3166-1 Alpha-2.
  static const standardCodeShortName = "$standardGeneralName Alpha-2";

  /// The standard numeric ISO code name for countries, defined as
  /// ISO 3166-1 Numeric.
  static const standardCodeNumericName = "$standardGeneralName Numeric";

  /// A tree-shakable constant map containing country (ISO 3166-1 Alpha-3) codes
  /// and their associated [WorldCountry] objects, for a O(1) access time.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// WorldCountry.codeMap['AFG']; // CountryAfg().
  /// ```
  static const codeMap = UpperCaseIsoMap(worldCountryCodeMap);

  /// A tree-shakable constant map containing numeric country
  /// (ISO 3166-1 Numeric) codes and their associated [WorldCountry] objects,
  /// for a O(1) access time.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// WorldCountry.codeNumericMap[204]; // CountryBen().
  /// ```
  static const codeNumericMap = UpperCaseIsoMap(worldCountryCodeNumericMap);

  /// A tree-shakable constant map containing country (ISO 3166-1 Alpha-2) codes
  /// and their associated [WorldCountry] objects, for a O(1) access time.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// WorldCountry.codeShortMap[BF]; // CountryBfa().
  /// ```
  static const codeShortMap = UpperCaseIsoMap(
    worldCountryCodeOtherMap,
    exactLength: IsoStandardized.codeShortLength,
  );

  /// A tree-shakable combined map of [codeMap], [codeShortMap] and
  /// [codeNumericMap], providing a unified view of country codes and their
  /// [WorldCountry] objects, for a O(1) access time.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// WorldCountry.map[204]; // CountryBen().
  /// ```
  static const map = UpperCaseIsoMap(
    {
      ...worldCountryCodeMap,
      ...worldCountryCodeOtherMap,
      ...worldCountryCodeNumericMap,
    },
    exactLength: null,
  );

  /// A list of all the countries currently supported
  /// by the [WorldCountry] class.
  static const list = worldCountryList;
}
