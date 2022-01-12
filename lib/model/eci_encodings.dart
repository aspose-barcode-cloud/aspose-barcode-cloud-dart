part of barcode.api;

class ECIEncodings {
  /// The underlying value of this enum member.
  String? value;

  ECIEncodings._internal(this.value);

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

  ECIEncodings.fromJson(dynamic data) {
    switch (data) {
      case "NONE":
        value = data;
        break;
      case "ISO_8859_1":
        value = data;
        break;
      case "ISO_8859_2":
        value = data;
        break;
      case "ISO_8859_3":
        value = data;
        break;
      case "ISO_8859_4":
        value = data;
        break;
      case "ISO_8859_5":
        value = data;
        break;
      case "ISO_8859_6":
        value = data;
        break;
      case "ISO_8859_7":
        value = data;
        break;
      case "ISO_8859_8":
        value = data;
        break;
      case "ISO_8859_9":
        value = data;
        break;
      case "ISO_8859_10":
        value = data;
        break;
      case "ISO_8859_11":
        value = data;
        break;
      case "ISO_8859_13":
        value = data;
        break;
      case "ISO_8859_14":
        value = data;
        break;
      case "ISO_8859_15":
        value = data;
        break;
      case "ISO_8859_16":
        value = data;
        break;
      case "Shift_JIS":
        value = data;
        break;
      case "Win1250":
        value = data;
        break;
      case "Win1251":
        value = data;
        break;
      case "Win1252":
        value = data;
        break;
      case "Win1256":
        value = data;
        break;
      case "UTF16BE":
        value = data;
        break;
      case "UTF8":
        value = data;
        break;
      case "US_ASCII":
        value = data;
        break;
      case "Big5":
        value = data;
        break;
      case "GB18030":
        value = data;
        break;
      case "EUC_KR":
        value = data;
        break;
      default:
        throw ('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(ECIEncodings data) {
    return data.value;
  }
}
