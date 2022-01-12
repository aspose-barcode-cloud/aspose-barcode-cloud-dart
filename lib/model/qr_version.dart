part of barcode.api;

class QRVersion {
  /// The underlying value of this enum member.
  String? value;

  QRVersion._internal(this.value);

  ///
  static QRVersion auto_ = QRVersion._internal("Auto");

  ///
  static QRVersion version01_ = QRVersion._internal("Version01");

  ///
  static QRVersion version02_ = QRVersion._internal("Version02");

  ///
  static QRVersion version03_ = QRVersion._internal("Version03");

  ///
  static QRVersion version04_ = QRVersion._internal("Version04");

  ///
  static QRVersion version05_ = QRVersion._internal("Version05");

  ///
  static QRVersion version06_ = QRVersion._internal("Version06");

  ///
  static QRVersion version07_ = QRVersion._internal("Version07");

  ///
  static QRVersion version08_ = QRVersion._internal("Version08");

  ///
  static QRVersion version09_ = QRVersion._internal("Version09");

  ///
  static QRVersion version10_ = QRVersion._internal("Version10");

  ///
  static QRVersion version11_ = QRVersion._internal("Version11");

  ///
  static QRVersion version12_ = QRVersion._internal("Version12");

  ///
  static QRVersion version13_ = QRVersion._internal("Version13");

  ///
  static QRVersion version14_ = QRVersion._internal("Version14");

  ///
  static QRVersion version15_ = QRVersion._internal("Version15");

  ///
  static QRVersion version16_ = QRVersion._internal("Version16");

  ///
  static QRVersion version17_ = QRVersion._internal("Version17");

  ///
  static QRVersion version18_ = QRVersion._internal("Version18");

  ///
  static QRVersion version19_ = QRVersion._internal("Version19");

  ///
  static QRVersion version20_ = QRVersion._internal("Version20");

  ///
  static QRVersion version21_ = QRVersion._internal("Version21");

  ///
  static QRVersion version22_ = QRVersion._internal("Version22");

  ///
  static QRVersion version23_ = QRVersion._internal("Version23");

  ///
  static QRVersion version24_ = QRVersion._internal("Version24");

  ///
  static QRVersion version25_ = QRVersion._internal("Version25");

  ///
  static QRVersion version26_ = QRVersion._internal("Version26");

  ///
  static QRVersion version27_ = QRVersion._internal("Version27");

  ///
  static QRVersion version28_ = QRVersion._internal("Version28");

  ///
  static QRVersion version29_ = QRVersion._internal("Version29");

  ///
  static QRVersion version30_ = QRVersion._internal("Version30");

  ///
  static QRVersion version31_ = QRVersion._internal("Version31");

  ///
  static QRVersion version32_ = QRVersion._internal("Version32");

  ///
  static QRVersion version33_ = QRVersion._internal("Version33");

  ///
  static QRVersion version34_ = QRVersion._internal("Version34");

  ///
  static QRVersion version35_ = QRVersion._internal("Version35");

  ///
  static QRVersion version36_ = QRVersion._internal("Version36");

  ///
  static QRVersion version37_ = QRVersion._internal("Version37");

  ///
  static QRVersion version38_ = QRVersion._internal("Version38");

  ///
  static QRVersion version39_ = QRVersion._internal("Version39");

  ///
  static QRVersion version40_ = QRVersion._internal("Version40");

  ///
  static QRVersion versionM1_ = QRVersion._internal("VersionM1");

  ///
  static QRVersion versionM2_ = QRVersion._internal("VersionM2");

  ///
  static QRVersion versionM3_ = QRVersion._internal("VersionM3");

  ///
  static QRVersion versionM4_ = QRVersion._internal("VersionM4");

  QRVersion.fromJson(dynamic data) {
    switch (data) {
      case "Auto":
        value = data;
        break;
      case "Version01":
        value = data;
        break;
      case "Version02":
        value = data;
        break;
      case "Version03":
        value = data;
        break;
      case "Version04":
        value = data;
        break;
      case "Version05":
        value = data;
        break;
      case "Version06":
        value = data;
        break;
      case "Version07":
        value = data;
        break;
      case "Version08":
        value = data;
        break;
      case "Version09":
        value = data;
        break;
      case "Version10":
        value = data;
        break;
      case "Version11":
        value = data;
        break;
      case "Version12":
        value = data;
        break;
      case "Version13":
        value = data;
        break;
      case "Version14":
        value = data;
        break;
      case "Version15":
        value = data;
        break;
      case "Version16":
        value = data;
        break;
      case "Version17":
        value = data;
        break;
      case "Version18":
        value = data;
        break;
      case "Version19":
        value = data;
        break;
      case "Version20":
        value = data;
        break;
      case "Version21":
        value = data;
        break;
      case "Version22":
        value = data;
        break;
      case "Version23":
        value = data;
        break;
      case "Version24":
        value = data;
        break;
      case "Version25":
        value = data;
        break;
      case "Version26":
        value = data;
        break;
      case "Version27":
        value = data;
        break;
      case "Version28":
        value = data;
        break;
      case "Version29":
        value = data;
        break;
      case "Version30":
        value = data;
        break;
      case "Version31":
        value = data;
        break;
      case "Version32":
        value = data;
        break;
      case "Version33":
        value = data;
        break;
      case "Version34":
        value = data;
        break;
      case "Version35":
        value = data;
        break;
      case "Version36":
        value = data;
        break;
      case "Version37":
        value = data;
        break;
      case "Version38":
        value = data;
        break;
      case "Version39":
        value = data;
        break;
      case "Version40":
        value = data;
        break;
      case "VersionM1":
        value = data;
        break;
      case "VersionM2":
        value = data;
        break;
      case "VersionM3":
        value = data;
        break;
      case "VersionM4":
        value = data;
        break;
      default:
        throw ('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(QRVersion data) {
    return data.value;
  }
}
