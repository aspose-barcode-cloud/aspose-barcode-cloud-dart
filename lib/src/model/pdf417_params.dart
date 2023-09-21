// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

class Pdf417Params {
  /* Height/Width ratio of 2D BarCode module. */
  double? aspectRatio = null;

/* DEPRECATED: This property is obsolete and will be removed in future releases. Unicode symbols detection and encoding will be processed in Auto mode with Extended Channel Interpretation charset designator. Using of own encodings requires manual CodeText encoding into byte[] array.  Sets the encoding of codetext. */
  @Deprecated(
      "This property is obsolete and will be removed in future releases. Unicode symbols detection and encoding will be processed in Auto mode with Extended Channel Interpretation charset designator. Using of own encodings requires manual CodeText encoding into byte[] array.  Sets the encoding of codetext. ")
  String? textEncoding = null;

/* Columns count. */
  int? columns = null;

/* Pdf417 symbology type of BarCode's compaction mode. Default value: Pdf417CompactionMode.Auto. */
  Pdf417CompactionMode? compactionMode = null;

/* Pdf417 symbology type of BarCode's error correction level ranging from level0 to level8, level0 means no error correction info, level8 means best error correction which means a larger picture. */
  Pdf417ErrorLevel? errorLevel = null;

/* Macro Pdf417 barcode's file ID. Used for MacroPdf417. */
  int? macroFileID = null;

/* Macro Pdf417 barcode's segment ID, which starts from 0, to MacroSegmentsCount - 1. */
  int? macroSegmentID = null;

/* Macro Pdf417 barcode segments count. */
  int? macroSegmentsCount = null;

/* Rows count. */
  int? rows = null;

/* Whether Pdf417 symbology type of BarCode is truncated (to reduce space). */
  bool? truncate = null;

/* Extended Channel Interpretation Identifiers. It is used to tell the barcode reader details about the used references for encoding the data in the symbol. Current implementation consists all well known charset encodings. */
  ECIEncodings? pdf417ECIEncoding = null;

/* Used to instruct the reader to interpret the data contained within the symbol as programming for reader initialization */
  bool? isReaderInitialization = null;

/* Macro Pdf417 barcode time stamp */
  DateTime? macroTimeStamp = null;

/* Macro Pdf417 barcode sender name */
  String? macroSender = null;

/* Macro Pdf417 file size. The file size field contains the size in bytes of the entire source file */
  int? macroFileSize = null;

/* Macro Pdf417 barcode checksum. The checksum field contains the value of the 16-bit (2 bytes) CRC checksum using the CCITT-16 polynomial */
  int? macroChecksum = null;

/* Macro Pdf417 barcode file name */
  String? macroFileName = null;

/* Macro Pdf417 barcode addressee name */
  String? macroAddressee = null;

/* Extended Channel Interpretation Identifiers. Applies for Macro PDF417 text fields. */
  ECIEncodings? macroECIEncoding = null;

/* Function codeword for Code 128 emulation. Applied for MicroPDF417 only. Ignored for PDF417 and MacroPDF417 barcodes. */
  Code128Emulation? code128Emulation = null;

/* Used to tell the encoder whether to add Macro PDF417 Terminator (codeword 922) to the segment. Applied only for Macro PDF417. */
  Pdf417MacroTerminator? pdf417MacroTerminator = null;

  Pdf417Params();

  @override
  String toString() {
    return 'Pdf417Params[aspectRatio=$aspectRatio, textEncoding=$textEncoding, columns=$columns, compactionMode=$compactionMode, errorLevel=$errorLevel, macroFileID=$macroFileID, macroSegmentID=$macroSegmentID, macroSegmentsCount=$macroSegmentsCount, rows=$rows, truncate=$truncate, pdf417ECIEncoding=$pdf417ECIEncoding, isReaderInitialization=$isReaderInitialization, macroTimeStamp=$macroTimeStamp, macroSender=$macroSender, macroFileSize=$macroFileSize, macroChecksum=$macroChecksum, macroFileName=$macroFileName, macroAddressee=$macroAddressee, macroECIEncoding=$macroECIEncoding, code128Emulation=$code128Emulation, pdf417MacroTerminator=$pdf417MacroTerminator, ]';
  }

  Pdf417Params.fromJson(Map<String, dynamic> json) {
    aspectRatio =
        json['aspectRatio'] == null ? null : json['aspectRatio'].toDouble();
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
    pdf417MacroTerminator =
        Pdf417MacroTerminator.fromJson(json['pdf417MacroTerminator']);
  }

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
      'Pdf417MacroTerminator': pdf417MacroTerminator
    };
  }

  static List<Pdf417Params> listFromJson(List<dynamic> json) {
    return json.map((value) => Pdf417Params.fromJson(value)).toList();
  }

  static Map<String, Pdf417Params> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = Map<String, Pdf417Params>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = Pdf417Params.fromJson(value));
    }
    return map;
  }
}