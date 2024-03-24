// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

/// PDF417 parameters.
class Pdf417Params {
  /// Height/Width ratio of 2D BarCode module.
  double? aspectRatio;

  /// DEPRECATED: This property is obsolete and will be removed in future releases. Unicode symbols detection and encoding will be processed in Auto mode with Extended Channel Interpretation charset designator. Using of own encodings requires manual CodeText encoding into byte[] array.  Sets the encoding of codetext.
  String? textEncoding;

  /// Columns count.
  int? columns;

  /// Pdf417 symbology type of BarCode's compaction mode. Default value: Pdf417CompactionMode.Auto.
  Pdf417CompactionMode? compactionMode;

  /// Pdf417 symbology type of BarCode's error correction level ranging from level0 to level8, level0 means no error correction info, level8 means best error correction which means a larger picture.
  Pdf417ErrorLevel? errorLevel;

  /// Macro Pdf417 barcode's file ID. Used for MacroPdf417.
  int? macroFileID;

  /// Macro Pdf417 barcode's segment ID, which starts from 0, to MacroSegmentsCount - 1.
  int? macroSegmentID;

  /// Macro Pdf417 barcode segments count.
  int? macroSegmentsCount;

  /// Rows count.
  int? rows;

  /// Whether Pdf417 symbology type of BarCode is truncated (to reduce space).
  bool? truncate;

  /// Extended Channel Interpretation Identifiers. It is used to tell the barcode reader details about the used references for encoding the data in the symbol. Current implementation consists all well known charset encodings.
  ECIEncodings? pdf417ECIEncoding;

  /// Used to instruct the reader to interpret the data contained within the symbol as programming for reader initialization
  bool? isReaderInitialization;

  /// Macro Pdf417 barcode time stamp
  DateTime? macroTimeStamp;

  /// Macro Pdf417 barcode sender name
  String? macroSender;

  /// Macro Pdf417 file size. The file size field contains the size in bytes of the entire source file
  int? macroFileSize;

  /// Macro Pdf417 barcode checksum. The checksum field contains the value of the 16-bit (2 bytes) CRC checksum using the CCITT-16 polynomial
  int? macroChecksum;

  /// Macro Pdf417 barcode file name
  String? macroFileName;

  /// Macro Pdf417 barcode addressee name
  String? macroAddressee;

  /// Extended Channel Interpretation Identifiers. Applies for Macro PDF417 text fields.
  ECIEncodings? macroECIEncoding;

  /// DEPRECATED: This property is obsolete and will be removed in future releases. See samples of using new parameters on https://releases.aspose.com/barcode/net/release-notes/2023/aspose-barcode-for-net-23-10-release-notes/ Function codeword for Code 128 emulation. Applied for MicroPDF417 only. Ignored for PDF417 and MacroPDF417 barcodes.
  Code128Emulation? code128Emulation;

  /// Can be used only with MicroPdf417 and encodes Code 128 emulation modes. Can encode FNC1 in second position modes 908 and 909, also can encode 910 and 911 which just indicate that recognized MicroPdf417 can be interpret as Code 128.
  bool? isCode128Emulation;

  /// Used to tell the encoder whether to add Macro PDF417 Terminator (codeword 922) to the segment. Applied only for Macro PDF417.
  Pdf417MacroTerminator? pdf417MacroTerminator;

  /// Defines linked modes with GS1MicroPdf417, MicroPdf417 and Pdf417 barcodes. With GS1MicroPdf417 symbology encodes 906, 907, 912, 913, 914, 915 “Linked” UCC/EAN-128 modes. With MicroPdf417 and Pdf417 symbologies encodes 918 linkage flag to associated linear component other than an EAN.UCC.
  bool? isLinked;

  /// Macro Characters 05 and 06 values are used to obtain more compact encoding in special modes. Can be used only with MicroPdf417 and encodes 916 and 917 MicroPdf417 modes. Default value: MacroCharacters.None.
  MacroCharacter? macroCharacters;

  /// Constructor
  Pdf417Params();

  @override
  String toString() {
    return 'Pdf417Params[aspectRatio=$aspectRatio, textEncoding=$textEncoding, columns=$columns, compactionMode=$compactionMode, errorLevel=$errorLevel, macroFileID=$macroFileID, macroSegmentID=$macroSegmentID, macroSegmentsCount=$macroSegmentsCount, rows=$rows, truncate=$truncate, pdf417ECIEncoding=$pdf417ECIEncoding, isReaderInitialization=$isReaderInitialization, macroTimeStamp=$macroTimeStamp, macroSender=$macroSender, macroFileSize=$macroFileSize, macroChecksum=$macroChecksum, macroFileName=$macroFileName, macroAddressee=$macroAddressee, macroECIEncoding=$macroECIEncoding, code128Emulation=$code128Emulation, isCode128Emulation=$isCode128Emulation, pdf417MacroTerminator=$pdf417MacroTerminator, isLinked=$isLinked, macroCharacters=$macroCharacters, ]';
  }

  /// Creates a Pdf417Params instance from a JSON representation.
  Pdf417Params.fromJson(Map<String, dynamic> json) {
    aspectRatio = json['aspectRatio']?.toDouble();
    textEncoding = json['textEncoding'];
    columns = json['columns'];
    compactionMode = Pdf417CompactionMode.fromJson(json['compactionMode']);
    errorLevel = Pdf417ErrorLevel.fromJson(json['errorLevel']);
    macroFileID = json['macroFileID'];
    macroSegmentID = json['macroSegmentID'];
    macroSegmentsCount = json['macroSegmentsCount'];
    rows = json['rows'];
    truncate = json['truncate'];
    pdf417ECIEncoding = ECIEncodings.fromJson(json['pdf417ECIEncoding']);
    isReaderInitialization = json['isReaderInitialization'];
    macroTimeStamp = json['macroTimeStamp'] == null
        ? null
        : DateTime.parse(json['macroTimeStamp']);
    macroSender = json['macroSender'];
    macroFileSize = json['macroFileSize'];
    macroChecksum = json['macroChecksum'];
    macroFileName = json['macroFileName'];
    macroAddressee = json['macroAddressee'];
    macroECIEncoding = ECIEncodings.fromJson(json['macroECIEncoding']);
    code128Emulation = Code128Emulation.fromJson(json['code128Emulation']);
    isCode128Emulation = json['isCode128Emulation'];
    pdf417MacroTerminator =
        Pdf417MacroTerminator.fromJson(json['pdf417MacroTerminator']);
    isLinked = json['isLinked'];
    macroCharacters = MacroCharacter.fromJson(json['macroCharacters']);
  }

  /// Returns a JSON representation of Pdf417Params.
  Map<String, dynamic> toJson() {
    return {
      'AspectRatio': aspectRatio,
      'TextEncoding': textEncoding,
      'Columns': columns,
      'CompactionMode': compactionMode,
      'ErrorLevel': errorLevel,
      'MacroFileID': macroFileID,
      'MacroSegmentID': macroSegmentID,
      'MacroSegmentsCount': macroSegmentsCount,
      'Rows': rows,
      'Truncate': truncate,
      'Pdf417ECIEncoding': pdf417ECIEncoding,
      'IsReaderInitialization': isReaderInitialization,
      'MacroTimeStamp': macroTimeStamp == null
          ? ''
          : macroTimeStamp!.toUtc().toIso8601String(),
      'MacroSender': macroSender,
      'MacroFileSize': macroFileSize,
      'MacroChecksum': macroChecksum,
      'MacroFileName': macroFileName,
      'MacroAddressee': macroAddressee,
      'MacroECIEncoding': macroECIEncoding,
      'Code128Emulation': code128Emulation,
      'IsCode128Emulation': isCode128Emulation,
      'Pdf417MacroTerminator': pdf417MacroTerminator,
      'IsLinked': isLinked,
      'MacroCharacters': macroCharacters
    };
  }

  /// Converts a list of JSON objects to a list of Pdf417Params instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of Pdf417Params instances.
  static List<Pdf417Params> listFromJson(List<dynamic> json) {
    return json.map((value) => Pdf417Params.fromJson(value)).toList();
  }
}
