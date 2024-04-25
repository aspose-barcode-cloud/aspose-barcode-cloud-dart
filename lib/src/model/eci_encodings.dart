///
/// ECIEncodings: [NONE, ISO_8859_1, ISO_8859_2, ISO_8859_3, ISO_8859_4, ISO_8859_5, ISO_8859_6, ISO_8859_7, ISO_8859_8, ISO_8859_9, ISO_8859_10, ISO_8859_11, ISO_8859_13, ISO_8859_14, ISO_8859_15, ISO_8859_16, Shift_JIS, Win1250, Win1251, Win1252, Win1256, UTF16BE, UTF8, US_ASCII, Big5, GB18030, EUC_KR]
class ECIEncodings {
  /// The underlying value of ECIEncodings enum.
  late final String _value;

  ECIEncodings._internal(this._value);

  ///
  // ignore: non_constant_identifier_names
  static final ECIEncodings NONE = ECIEncodings._internal("NONE");

  ///
  // ignore: non_constant_identifier_names
  static final ECIEncodings ISO_8859_1 = ECIEncodings._internal("ISO_8859_1");

  ///
  // ignore: non_constant_identifier_names
  static final ECIEncodings ISO_8859_2 = ECIEncodings._internal("ISO_8859_2");

  ///
  // ignore: non_constant_identifier_names
  static final ECIEncodings ISO_8859_3 = ECIEncodings._internal("ISO_8859_3");

  ///
  // ignore: non_constant_identifier_names
  static final ECIEncodings ISO_8859_4 = ECIEncodings._internal("ISO_8859_4");

  ///
  // ignore: non_constant_identifier_names
  static final ECIEncodings ISO_8859_5 = ECIEncodings._internal("ISO_8859_5");

  ///
  // ignore: non_constant_identifier_names
  static final ECIEncodings ISO_8859_6 = ECIEncodings._internal("ISO_8859_6");

  ///
  // ignore: non_constant_identifier_names
  static final ECIEncodings ISO_8859_7 = ECIEncodings._internal("ISO_8859_7");

  ///
  // ignore: non_constant_identifier_names
  static final ECIEncodings ISO_8859_8 = ECIEncodings._internal("ISO_8859_8");

  ///
  // ignore: non_constant_identifier_names
  static final ECIEncodings ISO_8859_9 = ECIEncodings._internal("ISO_8859_9");

  ///
  // ignore: non_constant_identifier_names
  static final ECIEncodings ISO_8859_10 = ECIEncodings._internal("ISO_8859_10");

  ///
  // ignore: non_constant_identifier_names
  static final ECIEncodings ISO_8859_11 = ECIEncodings._internal("ISO_8859_11");

  ///
  // ignore: non_constant_identifier_names
  static final ECIEncodings ISO_8859_13 = ECIEncodings._internal("ISO_8859_13");

  ///
  // ignore: non_constant_identifier_names
  static final ECIEncodings ISO_8859_14 = ECIEncodings._internal("ISO_8859_14");

  ///
  // ignore: non_constant_identifier_names
  static final ECIEncodings ISO_8859_15 = ECIEncodings._internal("ISO_8859_15");

  ///
  // ignore: non_constant_identifier_names
  static final ECIEncodings ISO_8859_16 = ECIEncodings._internal("ISO_8859_16");

  ///
  // ignore: non_constant_identifier_names
  static final ECIEncodings Shift_JIS = ECIEncodings._internal("Shift_JIS");

  ///
  // ignore: non_constant_identifier_names
  static final ECIEncodings Win1250 = ECIEncodings._internal("Win1250");

  ///
  // ignore: non_constant_identifier_names
  static final ECIEncodings Win1251 = ECIEncodings._internal("Win1251");

  ///
  // ignore: non_constant_identifier_names
  static final ECIEncodings Win1252 = ECIEncodings._internal("Win1252");

  ///
  // ignore: non_constant_identifier_names
  static final ECIEncodings Win1256 = ECIEncodings._internal("Win1256");

  ///
  // ignore: non_constant_identifier_names
  static final ECIEncodings UTF16BE = ECIEncodings._internal("UTF16BE");

  ///
  // ignore: non_constant_identifier_names
  static final ECIEncodings UTF8 = ECIEncodings._internal("UTF8");

  ///
  // ignore: non_constant_identifier_names
  static final ECIEncodings US_ASCII = ECIEncodings._internal("US_ASCII");

  ///
  // ignore: non_constant_identifier_names
  static final ECIEncodings Big5 = ECIEncodings._internal("Big5");

  ///
  // ignore: non_constant_identifier_names
  static final ECIEncodings GB18030 = ECIEncodings._internal("GB18030");

  ///
  // ignore: non_constant_identifier_names
  static final ECIEncodings EUC_KR = ECIEncodings._internal("EUC_KR");

  /// Creates a ECIEncodings instance from a JSON representation.
  ECIEncodings.fromJson(dynamic data) {
    switch (data) {
      case "NONE":
      case "ISO_8859_1":
      case "ISO_8859_2":
      case "ISO_8859_3":
      case "ISO_8859_4":
      case "ISO_8859_5":
      case "ISO_8859_6":
      case "ISO_8859_7":
      case "ISO_8859_8":
      case "ISO_8859_9":
      case "ISO_8859_10":
      case "ISO_8859_11":
      case "ISO_8859_13":
      case "ISO_8859_14":
      case "ISO_8859_15":
      case "ISO_8859_16":
      case "Shift_JIS":
      case "Win1250":
      case "Win1251":
      case "Win1252":
      case "Win1256":
      case "UTF16BE":
      case "UTF8":
      case "US_ASCII":
      case "Big5":
      case "GB18030":
      case "EUC_KR":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of ECIEncodings.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of ECIEncodings instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of ECIEncodings instances.
  static List<ECIEncodings> listFromJson(List<dynamic> json) {
    return json.map((value) => ECIEncodings.fromJson(value)).toList();
  }
}
