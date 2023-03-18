part of "../country.dart";

class WorldCountry extends Country {
  const WorldCountry({
    required super.name,
    required this.namesNative,
    required this.tld,
    required this.codeShort, // CCA2.
    required this.codeNumeric, // CCN3.
    required this.code, // CCA3.
    required this.altSpellings,
    required this.continent,
    required this.languages,
    required this.translations,
    required this.latLng,
    required this.area,
    required this.emoji,
    required this.maps,
    required this.population,
    required this.car,
    required this.timezones,
    this.capitalInfo,
    this.cioc,
    this.currencies,
    this.demonyms, // Could be required.
    this.fifa,
    this.gini,
    this.hasCoatOfArms = true,
    this.idd,
    this.independent = true,
    this.landlocked = false,
    this.postalCode,
    this.bordersCodes,
    this.startOfWeek = Weekday.monday,
    this.subregion,
    this.unMember = true,
  });

  factory WorldCountry.fromCode(String code) => list.firstWhere(
        (country) => country.code == code.toUpperCase(),
      );

  factory WorldCountry.fromCodeShort(String codeShort) => list.firstWhere(
        (country) => country.codeShort == codeShort.toUpperCase(),
      );

  final List<CountryName> namesNative;
  final List<String> tld;
  final String codeShort;
  final String codeNumeric;
  final String code;
  final String? cioc;
  final bool independent;
  final bool unMember;
  final List<FiatCurrency>? currencies;
  final Idd? idd;
  final List<String> altSpellings;
  final Continent continent;
  final SubRegion? subregion;
  final List<NaturalLanguage> languages;
  final List<CountryName> translations;
  final List<double> latLng;
  final bool landlocked;
  final List<String>? bordersCodes;
  final double area;
  final List<Demonyms>? demonyms;
  final String emoji;
  final Maps maps;
  final int population;
  final Gini? gini;
  final String? fifa;
  final Car car;
  final List<String> timezones;
  final bool hasCoatOfArms;
  final Weekday startOfWeek;
  final CapitalInfo? capitalInfo;
  final PostalCode? postalCode;

  @override
  String toString({bool short = true}) => short
      ? super.toString()
      : """WorldCountry(name: $name, namesNative: $namesNative  tld: $tld, codeShort: $codeShort, codeNumeric: $codeNumeric, code: $code, cioc: $cioc, independent: $independent, unMember: $unMember, currencies: $currencies, idd: $idd, altSpellings: $altSpellings, continent: $continent, subregion: $subregion, languages: $languages, translations: $translations, latLng: $latLng, landlocked: $landlocked, bordersCodes: $bordersCodes, area: $area, demonyms: $demonyms, emoji: $emoji, maps: $maps, population: $population, gini: $gini, fifa: $fifa, car: $car, timezones: $timezones, hasCoatOfArms: $hasCoatOfArms, startOfWeek: $startOfWeek, capitalInfo: $capitalInfo, postalCode: $postalCode)""";

  // ignore: lines_longer_than_80_chars, might be shorter in the future.
  bool get isOfficiallyAssigned =>
      codeShort.isNotEmpty &&
      code.isNotEmpty &&
      codeNumeric.isNotEmpty &&
      tld.isNotEmpty;

  static WorldCountry? maybeFromValue<T extends Object>(
    T value, {
    T? Function(WorldCountry lang)? where,
    Iterable<WorldCountry> countries = list,
  }) {
    assert(countries.isNotEmpty, "`countries` should not be empty!");
    for (final country in countries) {
      final expectedValue = where?.call(country) ?? country.code;
      if (expectedValue == value) return country;
    }

    return null;
  }

  List<WorldCountry>? get borders {
    final codes = bordersCodes;
    if (codes == null) return null;

    return List.unmodifiable(codes.map<WorldCountry>(WorldCountry.fromCode));
  }

  static const list = [
    CountryAfg(),
    CountryAla(),
    CountryAlb(),
    CountryDza(),
    CountryAsm(),
    CountryAnd(),
    CountryAgo(),
    CountryAia(),
    CountryAta(),
    CountryAtg(),
    CountryArg(),
    CountryArm(),
    CountryAbw(),
    CountryAus(),
    CountryAut(),
    CountryAze(),
    CountryBhs(),
    CountryBhr(),
    CountryBgd(),
    CountryBrb(),
    CountryBlr(),
    CountryBel(),
    CountryBlz(),
    CountryBen(),
    CountryBmu(),
    CountryBtn(),
    CountryBol(),
    CountryBih(),
    CountryBwa(),
    CountryBvt(),
    CountryBra(),
    CountryIot(),
    CountryVgb(),
    CountryBrn(),
    CountryBgr(),
    CountryBfa(),
    CountryBdi(),
    CountryKhm(),
    CountryCmr(),
    CountryCan(),
    CountryCpv(),
    CountryBes(),
    CountryCym(),
    CountryCaf(),
    CountryTcd(),
    CountryChl(),
    CountryChn(),
    CountryCxr(),
    CountryCck(),
    CountryCol(),
    CountryCom(),
    CountryCok(),
    CountryCri(),
    CountryHrv(),
    CountryCub(),
    CountryCuw(),
    CountryCyp(),
    CountryCze(),
    CountryCod(),
    CountryDnk(),
    CountryDji(),
    CountryDma(),
    CountryDom(),
    CountryEcu(),
    CountryEgy(),
    CountrySlv(),
    CountryGnq(),
    CountryEri(),
    CountryEst(),
    CountrySwz(),
    CountryEth(),
    CountryFlk(),
    CountryFro(),
    CountryFji(),
    CountryFin(),
    CountryFra(),
    CountryGuf(),
    CountryPyf(),
    CountryAtf(),
    CountryGab(),
    CountryGmb(),
    CountryGeo(),
    CountryDeu(),
    CountryGha(),
    CountryGib(),
    CountryGrc(),
    CountryGrl(),
    CountryGrd(),
    CountryGlp(),
    CountryGum(),
    CountryGtm(),
    CountryGgy(),
    CountryGin(),
    CountryGnb(),
    CountryGuy(),
    CountryHti(),
    CountryHmd(),
    CountryHnd(),
    CountryHkg(),
    CountryHun(),
    CountryIsl(),
    CountryInd(),
    CountryIdn(),
    CountryIrn(),
    CountryIrq(),
    CountryIrl(),
    CountryImn(),
    CountryIsr(),
    CountryIta(),
    CountryCiv(),
    CountryJam(),
    CountryJpn(),
    CountryJey(),
    CountryJor(),
    CountryKaz(),
    CountryKen(),
    CountryKir(),
    CountryKwt(),
    CountryKgz(),
    CountryLao(),
    CountryLva(),
    CountryLbn(),
    CountryLso(),
    CountryLbr(),
    CountryLby(),
    CountryLie(),
    CountryLtu(),
    CountryLux(),
    CountryMac(),
    CountryMdg(),
    CountryMwi(),
    CountryMys(),
    CountryMdv(),
    CountryMli(),
    CountryMlt(),
    CountryMhl(),
    CountryMtq(),
    CountryMrt(),
    CountryMus(),
    CountryMyt(),
    CountryMex(),
    CountryFsm(),
    CountryMda(),
    CountryMco(),
    CountryMng(),
    CountryMne(),
    CountryMsr(),
    CountryMar(),
    CountryMoz(),
    CountryMmr(),
    CountryNam(),
    CountryNru(),
    CountryNpl(),
    CountryNld(),
    CountryNcl(),
    CountryNzl(),
    CountryNic(),
    CountryNer(),
    CountryNga(),
    CountryNiu(),
    CountryNfk(),
    CountryPrk(),
    CountryMkd(),
    CountryMnp(),
    CountryNor(),
    CountryOmn(),
    CountryPak(),
    CountryPlw(),
    CountryPse(),
    CountryPan(),
    CountryPng(),
    CountryPry(),
    CountryPer(),
    CountryPhl(),
    CountryPcn(),
    CountryPol(),
    CountryPrt(),
    CountryPri(),
    CountryQat(),
    CountryCog(),
    CountryRou(),
    CountryRus(),
    CountryRwa(),
    CountryReu(),
    CountryBlm(),
    CountryShn(),
    CountryKna(),
    CountryLca(),
    CountryMaf(),
    CountrySpm(),
    CountryVct(),
    CountryWsm(),
    CountrySmr(),
    CountrySau(),
    CountrySen(),
    CountrySrb(),
    CountrySyc(),
    CountrySle(),
    CountrySgp(),
    CountrySxm(),
    CountrySvk(),
    CountrySvn(),
    CountrySlb(),
    CountrySom(),
    CountryZaf(),
    CountrySgs(),
    CountryKor(),
    CountrySsd(),
    CountryEsp(),
    CountryLka(),
    CountrySdn(),
    CountrySur(),
    CountrySjm(),
    CountrySwe(),
    CountryChe(),
    CountrySyr(),
    CountryStp(),
    CountryTwn(),
    CountryTjk(),
    CountryTza(),
    CountryTha(),
    CountryTls(),
    CountryTgo(),
    CountryTkl(),
    CountryTon(),
    CountryTto(),
    CountryTun(),
    CountryTur(),
    CountryTkm(),
    CountryTca(),
    CountryTuv(),
    CountryUga(),
    CountryUkr(),
    CountryAre(),
    CountryGbr(),
    CountryUsa(),
    CountryUmi(),
    CountryVir(),
    CountryUry(),
    CountryUzb(),
    CountryVut(),
    CountryVat(),
    CountryVen(),
    CountryVnm(),
    CountryWlf(),
    CountryEsh(),
    CountryYem(),
    CountryZmb(),
    CountryZwe(),
    CountryUnk(),
  ];
}
