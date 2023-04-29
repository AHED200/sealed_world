part of "../language.dart";

class NaturalLanguage extends Language {
  const NaturalLanguage({
    required super.name,
    required this.codeShort,
    required this.namesNative,
    required this.code,
    this.bibliographicCode,
    this.family = const IndoEuropean(),
    this.isRightToLeft = false,
  })  : assert(code.length == 3, "`code` should be exactly 3 characters long!"),
        assert(
          codeShort.length == 2,
          "`codeShort` should be exactly 2 characters long!",
        ),
        assert(
          namesNative != const <String>[],
          "`namesNative` should not be empty!",
        ),
        assert(
          bibliographicCode == null || bibliographicCode.length == 3,
          "`bibliographicCode` should be exactly 3 characters long!",
        );

  factory NaturalLanguage.fromCode(String code) => list.firstWhere(
        (naturalLang) => naturalLang.code == code.toUpperCase(),
      );

  factory NaturalLanguage.fromCodeShort(String codeShort) => list.firstWhere(
        (naturalLang) => naturalLang.codeShort == codeShort.toUpperCase(),
      );

  factory NaturalLanguage.fromName(String name) => list.firstWhere(
        (naturalLang) => naturalLang.name == name,
      );

  final String? bibliographicCode;
  final String codeShort;
  final NaturalLanguageFamily family;
  final bool isRightToLeft;
  final List<String> namesNative;
  final String code;

  @override
  String toString({bool short = true}) => short
      ? super.toString()
      : """NaturalLanguage(name: $name, codeShort: $codeShort, code: $code, bibliographicCode: $bibliographicCode, family: $family, nativeName: $namesNative, isRightToLeft: $isRightToLeft)""";

  static NaturalLanguage? maybeFromValue<T extends Object>(
    T value, {
    T? Function(NaturalLanguage lang)? where,
    Iterable<NaturalLanguage> languages = list,
  }) {
    assert(languages.isNotEmpty, "`languages` should not be empty!");
    for (final language in languages) {
      final expectedValue = where?.call(language) ?? language.code;
      if (expectedValue == value) return language;
    }

    return null;
  }

  static const list = [
    LangAar(),
    LangAbk(),
    LangAve(),
    LangAfr(),
    LangAka(),
    LangAmh(),
    LangArg(),
    LangAra(),
    LangAsm(),
    LangAva(),
    LangAym(),
    LangAze(),
    LangBak(),
    LangBel(),
    LangBul(),
    LangBih(),
    LangBis(),
    LangBam(),
    LangBen(),
    LangBod(),
    LangBre(),
    LangBos(),
    LangCat(),
    LangChe(),
    LangCha(),
    LangCos(),
    LangCre(),
    LangCes(),
    LangChu(),
    LangChv(),
    LangCor(),
    LangCym(),
    LangDan(),
    LangDeu(),
    LangDiv(),
    LangDzo(),
    LangEwe(),
    LangEll(),
    LangEng(),
    LangEpo(),
    LangEst(),
    LangEus(),
    LangFas(),
    LangFul(),
    LangFin(),
    LangFij(),
    LangFao(),
    LangFra(),
    LangFry(),
    LangGle(),
    LangGla(),
    LangGlg(),
    LangGrn(),
    LangGuj(),
    LangGlv(),
    LangHau(),
    LangHeb(),
    LangHin(),
    LangHmo(),
    LangHrv(),
    LangHat(),
    LangHun(),
    LangHye(),
    LangHer(),
    LangIna(),
    LangInd(),
    LangIle(),
    LangIbo(),
    LangIii(),
    LangIpk(),
    LangIdo(),
    LangIsl(),
    LangIta(),
    LangIku(),
    LangJpn(),
    LangJav(),
    LangKat(),
    LangKon(),
    LangKik(),
    LangKua(),
    LangKaz(),
    LangKal(),
    LangKin(),
    LangKhm(),
    LangKan(),
    LangKor(),
    LangKau(),
    LangKas(),
    LangKur(),
    LangKom(),
    LangKir(),
    LangLat(),
    LangLtz(),
    LangLug(),
    LangLim(),
    LangLin(),
    LangLao(),
    LangLit(),
    LangLub(),
    LangLav(),
    LangMlg(),
    LangMah(),
    LangMri(),
    LangMkd(),
    LangMal(),
    LangMon(),
    LangMar(),
    LangMsa(),
    LangMlt(),
    LangMya(),
    LangNau(),
    LangNob(),
    LangNde(),
    LangNep(),
    LangNdo(),
    LangNld(),
    LangNno(),
    LangNor(),
    LangNbl(),
    LangNav(),
    LangNya(),
    LangOci(),
    LangOji(),
    LangOrm(),
    LangOri(),
    LangOss(),
    LangPan(),
    LangPli(),
    LangPol(),
    LangPus(),
    LangPor(),
    LangQue(),
    LangRoh(),
    LangRun(),
    LangRon(),
    LangRus(),
    LangSan(),
    LangSrd(),
    LangSnd(),
    LangSme(),
    LangSag(),
    LangSin(),
    LangSlk(),
    LangSlv(),
    LangSmo(),
    LangSna(),
    LangSom(),
    LangSpa(),
    LangSqi(),
    LangSrp(),
    LangSsw(),
    LangSot(),
    LangSun(),
    LangSwe(),
    LangSwa(),
    LangTam(),
    LangTel(),
    LangTgk(),
    LangTha(),
    LangTir(),
    LangTuk(),
    LangTgl(),
    LangTsn(),
    LangTon(),
    LangTur(),
    LangTso(),
    LangTat(),
    LangTwi(),
    LangTah(),
    LangUig(),
    LangUkr(),
    LangUrd(),
    LangUzb(),
    LangVen(),
    LangVie(),
    LangVol(),
    LangWln(),
    LangWol(),
    LangXho(),
    LangYid(),
    LangYor(),
    LangZha(),
    LangZho(),
    LangZul(),
  ];
}
