// ignore_for_file: prefer-static-class, to follow pattern from eco-system.
import "package:sealed_countries/sealed_countries.dart";

import "../data/flags_map_part_1.data.dart";
import "../data/flags_map_part_2.data.dart";
import "../data/flags_map_part_3.data.dart";

const flagPropertiesMap = {
  CountryAbw(): flagAbwProperties,
  CountryAfg(): flagAfgProperties,
  CountryAgo(): flagAgoProperties,
  CountryAia(): flagAiaProperties,
  CountryAla(): flagAlaProperties,
  CountryAlb(): flagAlbProperties,
  CountryAnd(): flagAndProperties,
  CountryAre(): flagAreProperties,
  CountryArg(): flagArgProperties,
  CountryArm(): flagArmProperties,
  CountryAsm(): flagAsmProperties,
  CountryAta(): flagAtaProperties,
  CountryAtf(): flagAtfProperties,
  CountryAtg(): flagAtgProperties,
  CountryAus(): flagAusProperties,
  CountryAut(): flagAutProperties,
  CountryAze(): flagAzeProperties,
  CountryBdi(): flagBdiProperties,
  CountryBel(): flagBelProperties,
  CountryBen(): flagBenProperties,
  CountryBes(): flagBesProperties,
  CountryBfa(): flagBfaProperties,
  CountryBgd(): flagBgdProperties,
  CountryBgr(): flagBgrProperties,
  CountryBhr(): flagBhrProperties,
  CountryBhs(): flagBhsProperties,
  CountryBih(): flagBihProperties,
  CountryBlm(): flagBlmProperties,
  CountryBlr(): flagBlrProperties,
  CountryBlz(): flagBlzProperties,
  CountryBmu(): flagBmuProperties,
  CountryBol(): flagBolProperties,
  CountryBra(): flagBraProperties,
  CountryBrb(): flagBrbProperties,
  CountryBrn(): flagBrnProperties,
  CountryBtn(): flagBtnProperties,
  CountryBvt(): flagBvtProperties,
  CountryBwa(): flagBwaProperties,
  CountryCaf(): flagCafProperties,
  CountryCan(): flagCanProperties,
  CountryCck(): flagCckProperties,
  CountryChe(): flagCheProperties,
  CountryChl(): flagChlProperties,
  CountryChn(): flagChnProperties,
  CountryCiv(): flagCivProperties,
  CountryCmr(): flagCmrProperties,
  CountryCod(): flagCodProperties,
  CountryCog(): flagCogProperties,
  CountryCok(): flagCokProperties,
  CountryCol(): flagColProperties,
  CountryCom(): flagComProperties,
  CountryCpv(): flagCpvProperties,
  CountryCri(): flagCriProperties,
  CountryCub(): flagCubProperties,
  CountryCuw(): flagCuwProperties,
  CountryCxr(): flagCxrProperties,
  CountryCym(): flagCymProperties,
  CountryCyp(): flagCypProperties,
  CountryCze(): flagCzeProperties,
  CountryDeu(): flagDeuProperties,
  CountryDji(): flagDjiProperties,
  CountryDma(): flagDmaProperties,
  CountryDnk(): flagDnkProperties,
  CountryDom(): flagDomProperties,
  CountryDza(): flagDzaProperties,
  CountryEcu(): flagEcuProperties,
  CountryEgy(): flagEgyProperties,
  CountryEri(): flagEriProperties,
  CountryEsh(): flagEshProperties,
  CountryEsp(): flagEspProperties,
  CountryEst(): flagEstProperties,
  CountryEth(): flagEthProperties,
  CountryFin(): flagFinProperties,
  CountryFji(): flagFjiProperties,
  CountryFlk(): flagFlkProperties,
  CountryFra(): flagFraProperties,
  CountryFro(): flagFroProperties,
  CountryFsm(): flagFsmProperties,
  CountryGab(): flagGabProperties,
  CountryGbr(): flagGbrProperties,
  CountryGeo(): flagGeoProperties,
  CountryGgy(): flagGgyProperties,
  CountryGha(): flagGhaProperties,
  CountryGib(): flagGibProperties,
  CountryGin(): flagGinProperties,
  CountryGlp(): flagGlpProperties,
  CountryGmb(): flagGmbProperties,
  CountryGnb(): flagGnbProperties,
  CountryGnq(): flagGnqProperties,
  CountryGrc(): flagGrcProperties,
  CountryGrd(): flagGrdProperties,
  CountryGrl(): flagGrlProperties,
  CountryGtm(): flagGtmProperties,
  CountryGuf(): flagGufProperties,
  CountryGum(): flagGumProperties,
  CountryGuy(): flagGuyProperties,
  CountryHkg(): flagHkgProperties,
  CountryHmd(): flagHmdProperties,
  CountryHnd(): flagHndProperties,
  CountryHrv(): flagHrvProperties,
  CountryHti(): flagHtiProperties,
  CountryHun(): flagHunProperties,
  CountryIdn(): flagIdnProperties,
  CountryImn(): flagImnProperties,
  CountryInd(): flagIndProperties,
  CountryIot(): flagIotProperties,
  CountryIrl(): flagIrlProperties,
  CountryIrn(): flagIrnProperties,
  CountryIrq(): flagIrqProperties,
  CountryIsl(): flagIslProperties,
  CountryIsr(): flagIsrProperties,
  CountryIta(): flagItaProperties,
  CountryJam(): flagJamProperties,
  CountryJey(): flagJeyProperties,
  CountryJor(): flagJorProperties,
  CountryJpn(): flagJpnProperties,
  CountryKaz(): flagKazProperties,
  CountryKen(): flagKenProperties,
  CountryKgz(): flagKgzProperties,
  CountryKhm(): flagKhmProperties,
  CountryKir(): flagKirProperties,
  CountryKna(): flagKnaProperties,
  CountryKor(): flagKorProperties,
  CountryKwt(): flagKwtProperties,
  CountryLao(): flagLaoProperties,
  CountryLbn(): flagLbnProperties,
  CountryLbr(): flagLbrProperties,
  CountryLby(): flagLbyProperties,
  CountryLca(): flagLcaProperties,
  CountryLie(): flagLieProperties,
  CountryLka(): flagLkaProperties,
  CountryLso(): flagLsoProperties,
  CountryLtu(): flagLtuProperties,
  CountryLux(): flagLuxProperties,
  CountryLva(): flagLvaProperties,
  CountryMac(): flagMacProperties,
  CountryMaf(): flagMafProperties,
  CountryMar(): flagMarProperties,
  CountryMco(): flagMcoProperties,
  CountryMda(): flagMdaProperties,
  CountryMdg(): flagMdgProperties,
  CountryMdv(): flagMdvProperties,
  CountryMex(): flagMexProperties,
  CountryMhl(): flagMhlProperties,
  CountryMkd(): flagMkdProperties,
  CountryMli(): flagMliProperties,
  CountryMlt(): flagMltProperties,
  CountryMmr(): flagMmrProperties,
  CountryMne(): flagMneProperties,
  CountryMng(): flagMngProperties,
  CountryMnp(): flagMnpProperties,
  CountryMoz(): flagMozProperties,
  CountryMrt(): flagMrtProperties,
  CountryMsr(): flagMsrProperties,
  CountryMtq(): flagMtqProperties,
  CountryMus(): flagMusProperties,
  CountryMwi(): flagMwiProperties,
  CountryMys(): flagMysProperties,
  CountryMyt(): flagMytProperties,
  CountryNam(): flagNamProperties,
  CountryNcl(): flagNclProperties,
  CountryNer(): flagNerProperties,
  CountryNfk(): flagNfkProperties,
  CountryNga(): flagNgaProperties,
  CountryNic(): flagNicProperties,
  CountryNiu(): flagNiuProperties,
  CountryNld(): flagNldProperties,
  CountryNor(): flagNorProperties,
  CountryNpl(): flagNplProperties,
  CountryNru(): flagNruProperties,
  CountryNzl(): flagNzlProperties,
  CountryOmn(): flagOmnProperties,
  CountryPak(): flagPakProperties,
  CountryPan(): flagPanProperties,
  CountryPcn(): flagPcnProperties,
  CountryPer(): flagPerProperties,
  CountryPhl(): flagPhlProperties,
  CountryPlw(): flagPlwProperties,
  CountryPng(): flagPngProperties,
  CountryPol(): flagPolProperties,
  CountryPri(): flagPriProperties,
  CountryPrk(): flagPrkProperties,
  CountryPrt(): flagPrtProperties,
  CountryPry(): flagPryProperties,
  CountryPse(): flagPseProperties,
  CountryPyf(): flagPyfProperties,
  CountryQat(): flagQatProperties,
  CountryReu(): flagReuProperties,
  CountryRou(): flagRouProperties,
  CountryRus(): flagRusProperties,
  CountryRwa(): flagRwaProperties,
  CountrySau(): flagSauProperties,
  CountrySdn(): flagSdnProperties,
  CountrySen(): flagSenProperties,
  CountrySgp(): flagSgpProperties,
  CountrySgs(): flagSgsProperties,
  CountryShn(): flagShnProperties,
  CountrySjm(): flagSjmProperties,
  CountrySlb(): flagSlbProperties,
  CountrySle(): flagSleProperties,
  CountrySlv(): flagSlvProperties,
  CountrySmr(): flagSmrProperties,
  CountrySom(): flagSomProperties,
  CountrySpm(): flagSpmProperties,
  CountrySrb(): flagSrbProperties,
  CountrySsd(): flagSsdProperties,
  CountryStp(): flagStpProperties,
  CountrySur(): flagSurProperties,
  CountrySvk(): flagSvkProperties,
  CountrySvn(): flagSvnProperties,
  CountrySwe(): flagSweProperties,
  CountrySwz(): flagSwzProperties,
  CountrySxm(): flagSxmProperties,
  CountrySyc(): flagSycProperties,
  CountrySyr(): flagSyrProperties,
  CountryTca(): flagTcaProperties,
  CountryTcd(): flagTcdProperties,
  CountryTgo(): flagTgoProperties,
  CountryTha(): flagThaProperties,
  CountryTjk(): flagTjkProperties,
  CountryTkl(): flagTklProperties,
  CountryTkm(): flagTkmProperties,
  CountryTls(): flagTlsProperties,
  CountryTon(): flagTonProperties,
  CountryTto(): flagTtoProperties,
  CountryTun(): flagTunProperties,
  CountryTur(): flagTurProperties,
  CountryTuv(): flagTuvProperties,
  CountryTwn(): flagTwnProperties,
  CountryTza(): flagTzaProperties,
  CountryUga(): flagUgaProperties,
  CountryUkr(): flagUkrProperties,
  CountryUmi(): flagUmiProperties,
  CountryUry(): flagUryProperties,
  CountryUsa(): flagUsaProperties,
  CountryUzb(): flagUzbProperties,
  CountryVat(): flagVatProperties,
  CountryVct(): flagVctProperties,
  CountryVen(): flagVenProperties,
  CountryVgb(): flagVgbProperties,
  CountryVir(): flagVirProperties,
  CountryVnm(): flagVnmProperties,
  CountryVut(): flagVutProperties,
  CountryWlf(): flagWlfProperties,
  CountryWsm(): flagWsmProperties,
  CountryYem(): flagYemProperties,
  CountryZaf(): flagZafProperties,
  CountryZmb(): flagZmbProperties,
  CountryZwe(): flagZweProperties,
  CountryUnk(): flagUnkProperties,
};

const fullFlags = [
  CountryAbw(),
  CountryAgo(), // TODO!
  CountryAla(),
  CountryAre(),
  CountryArg(), // TODO!
  CountryArm(),
  CountryAta(),
  CountryAtf(),
  CountryAtg(),
  CountryAus(),
  CountryAut(),
  CountryAze(),
  CountryBdi(),
  CountryBel(),
  CountryBen(),
  CountryBes(), // TODO?
  CountryBfa(),
  CountryBgd(),
  CountryBgr(),
  CountryBhr(),
  CountryBhs(),
  CountryBih(),
  CountryBlm(), // TODO?
  CountryBvt(),
  CountryBwa(),
  CountryCaf(),
  CountryCan(), // TODO?
  CountryChe(),
  CountryChl(),
  CountryChn(),
  CountryCiv(),
  CountryCmr(),
  CountryCod(),
  CountryCog(),
  CountryCok(),
  CountryCol(),
  CountryCom(),
  CountryCpv(),
  CountryCub(),
  CountryCuw(),
  CountryCyp(), // TODO?
  CountryCze(),
  CountryDeu(),
  CountryDji(),
  CountryDnk(),
  CountryDza(),
  CountryEsh(),
  CountryEst(),
  CountryFin(),
  CountryFra(),
  CountryFro(),
  CountryFsm(),
  CountryGab(),
  CountryGbr(),
  CountryGeo(),
  CountryGha(),
  CountryGin(),
  CountryGlp(), // TODO?
  CountryGmb(),
  CountryGnb(),
  CountryGrc(),
  CountryGrl(),
  CountryGuf(), // TODO?
  CountryGuy(),
  CountryHmd(),
  CountryHnd(),
  CountryHun(),
  CountryIdn(),
  CountryInd(), // TODO?
  CountryIrl(),
  CountryIsl(),
  CountryIsr(),
  CountryIta(),
  CountryJam(),
  CountryJor(),
  CountryJpn(),
  CountryKna(), // TODO!
  CountryKor(),
  CountryKwt(),
  CountryLao(),
  CountryLbr(),
  CountryLby(),
  CountryLca(),
  CountryLtu(),
  CountryLux(),
  CountryLva(),
  CountryMaf(),
  CountryMar(),
  CountryMco(),
  CountryMdg(),
  CountryMdv(),
  CountryMhl(),
  CountryMli(),
  CountryMmr(),
  CountryMrt(), // TODO!
  CountryMtq(),
  CountryMus(),
  CountryMys(),
  CountryMyt(), // TODO?
  CountryNam(),
  CountryNcl(), // TODO?
  CountryNer(),
  CountryNga(),
  CountryNld(),
  CountryNor(),
  CountryNpl(),
  CountryNru(),
  CountryNzl(),
  CountryPak(),
  CountryPan(),
  CountryPer(),
  CountryPlw(),
  CountryPol(),
  CountryPri(),
  CountryPrk(),
  CountryPse(),
  CountryQat(),
  CountryReu(), // TODO?
  CountryRou(),
  CountryRus(),
  CountryRwa(),
  CountrySdn(),
  CountrySen(),
  CountrySgp(),
  CountryShn(), // TODO?
  CountrySjm(),
  CountrySlb(),
  CountrySle(),
  CountrySom(),
  CountrySpm(), // TODO?
  CountrySsd(),
  CountryStp(),
  CountrySur(),
  CountrySwe(),
  CountrySyc(),
  CountrySyr(),
  CountryTcd(),
  CountryTgo(),
  CountryTha(),
  CountryTkl(), // TODO!
  CountryTls(),
  CountryTon(),
  CountryTto(),
  CountryTun(),
  CountryTur(),
  CountryTuv(),
  CountryTwn(),
  CountryTza(),
  CountryUkr(),
  CountryUmi(),
  CountryUsa(),
  CountryUzb(),
  CountryVct(),
  CountryVen(),
  CountryVnm(),
  CountryWlf(), // TODO?
  CountryWsm(),
  CountryYem(),
  CountryZaf(),
  CountryUnk(),
];
