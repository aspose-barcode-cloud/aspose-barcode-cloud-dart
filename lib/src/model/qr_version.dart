///
/// QRVersion: [Auto, Version01, Version02, Version03, Version04, Version05, Version06, Version07, Version08, Version09, Version10, Version11, Version12, Version13, Version14, Version15, Version16, Version17, Version18, Version19, Version20, Version21, Version22, Version23, Version24, Version25, Version26, Version27, Version28, Version29, Version30, Version31, Version32, Version33, Version34, Version35, Version36, Version37, Version38, Version39, Version40, VersionM1, VersionM2, VersionM3, VersionM4]
class QRVersion {
  /// The underlying value of QRVersion enum.
  late final String _value;

  QRVersion._internal(this._value);

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

  /// Creates a QRVersion instance from a JSON representation.
  QRVersion.fromJson(dynamic data) {
    switch (data) {
      case "Auto":
      case "Version01":
      case "Version02":
      case "Version03":
      case "Version04":
      case "Version05":
      case "Version06":
      case "Version07":
      case "Version08":
      case "Version09":
      case "Version10":
      case "Version11":
      case "Version12":
      case "Version13":
      case "Version14":
      case "Version15":
      case "Version16":
      case "Version17":
      case "Version18":
      case "Version19":
      case "Version20":
      case "Version21":
      case "Version22":
      case "Version23":
      case "Version24":
      case "Version25":
      case "Version26":
      case "Version27":
      case "Version28":
      case "Version29":
      case "Version30":
      case "Version31":
      case "Version32":
      case "Version33":
      case "Version34":
      case "Version35":
      case "Version36":
      case "Version37":
      case "Version38":
      case "Version39":
      case "Version40":
      case "VersionM1":
      case "VersionM2":
      case "VersionM3":
      case "VersionM4":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of QRVersion.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of QRVersion instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of QRVersion instances.
  static List<QRVersion> listFromJson(List<dynamic> json) {
    return json.map((value) => QRVersion.fromJson(value)).toList();
  }
}
