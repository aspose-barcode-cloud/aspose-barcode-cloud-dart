///
/// ECIEncodings: [NONE, ISO_8859_1, ISO_8859_2, ISO_8859_3, ISO_8859_4, ISO_8859_5, ISO_8859_6, ISO_8859_7, ISO_8859_8, ISO_8859_9, ISO_8859_10, ISO_8859_11, ISO_8859_13, ISO_8859_14, ISO_8859_15, ISO_8859_16, Shift_JIS, Win1250, Win1251, Win1252, Win1256, UTF16BE, UTF8, US_ASCII, Big5, GB18030, EUC_KR]
class ECIEncodings {
  /// The underlying value of ECIEncodings enum.
  late final String _value;

  ECIEncodings._internal(this._value);

  ///
  static ECIEncodings nONE_ = ECIEncodings._internal("NONE");

  ///
  static ECIEncodings iSO88591_ = ECIEncodings._internal("ISO_8859_1");

  ///
  static ECIEncodings iSO88592_ = ECIEncodings._internal("ISO_8859_2");

  ///
  static ECIEncodings iSO88593_ = ECIEncodings._internal("ISO_8859_3");

  ///
  static ECIEncodings iSO88594_ = ECIEncodings._internal("ISO_8859_4");

  ///
  static ECIEncodings iSO88595_ = ECIEncodings._internal("ISO_8859_5");

  ///
  static ECIEncodings iSO88596_ = ECIEncodings._internal("ISO_8859_6");

  ///
  static ECIEncodings iSO88597_ = ECIEncodings._internal("ISO_8859_7");

  ///
  static ECIEncodings iSO88598_ = ECIEncodings._internal("ISO_8859_8");

  ///
  static ECIEncodings iSO88599_ = ECIEncodings._internal("ISO_8859_9");

  ///
  static ECIEncodings iSO885910_ = ECIEncodings._internal("ISO_8859_10");

  ///
  static ECIEncodings iSO885911_ = ECIEncodings._internal("ISO_8859_11");

  ///
  static ECIEncodings iSO885913_ = ECIEncodings._internal("ISO_8859_13");

  ///
  static ECIEncodings iSO885914_ = ECIEncodings._internal("ISO_8859_14");

  ///
  static ECIEncodings iSO885915_ = ECIEncodings._internal("ISO_8859_15");

  ///
  static ECIEncodings iSO885916_ = ECIEncodings._internal("ISO_8859_16");

  ///
  static ECIEncodings shiftJIS_ = ECIEncodings._internal("Shift_JIS");

  ///
  static ECIEncodings win1250_ = ECIEncodings._internal("Win1250");

  ///
  static ECIEncodings win1251_ = ECIEncodings._internal("Win1251");

  ///
  static ECIEncodings win1252_ = ECIEncodings._internal("Win1252");

  ///
  static ECIEncodings win1256_ = ECIEncodings._internal("Win1256");

  ///
  static ECIEncodings uTF16BE_ = ECIEncodings._internal("UTF16BE");

  ///
  static ECIEncodings uTF8_ = ECIEncodings._internal("UTF8");

  ///
  static ECIEncodings uSASCII_ = ECIEncodings._internal("US_ASCII");

  ///
  static ECIEncodings big5_ = ECIEncodings._internal("Big5");

  ///
  static ECIEncodings gB18030_ = ECIEncodings._internal("GB18030");

  ///
  static ECIEncodings eUCKR_ = ECIEncodings._internal("EUC_KR");

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
