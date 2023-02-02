part of aspose_barcode_cloud.api;

class Pdf417Params {
  Pdf417Params();

  Pdf417Params.fromJson(Map<String, dynamic> json) {
    aspectRatio =
        json['aspectRatio'] == null ? null : json['aspectRatio'].toDouble();
    textEncoding = json['textEncoding'];
    columns = json['columns'];
    compactionMode = new Pdf417CompactionMode.fromJson(json['compactionMode']);
    errorLevel = new Pdf417ErrorLevel.fromJson(json['errorLevel']);
    macroFileID = json['macroFileID'];
    macroSegmentID = json['macroSegmentID'];
    macroSegmentsCount = json['macroSegmentsCount'];
    rows = json['rows'];
    truncate = json['truncate'];
    pdf417ECIEncoding = new ECIEncodings.fromJson(json['pdf417ECIEncoding']);
    isReaderInitialization = json['isReaderInitialization'];
    macroTimeStamp = json['macroTimeStamp'] == null
        ? null
        : DateTime.parse(json['macroTimeStamp']);
    macroSender = json['macroSender'];
    macroFileSize = json['macroFileSize'];
    macroChecksum = json['macroChecksum'];
    macroFileName = json['macroFileName'];
    macroAddressee = json['macroAddressee'];
    macroECIEncoding = new ECIEncodings.fromJson(json['macroECIEncoding']);
    code128Emulation = new Code128Emulation.fromJson(json['code128Emulation']);
    pdf417MacroTerminator =
        new Pdf417MacroTerminator.fromJson(json['pdf417MacroTerminator']);
  }
  /* Height/Width ratio of 2D BarCode module. */
  double? aspectRatio = null;

/* Encoding of codetext. */
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

  @override
  String toString() =>
      'Pdf417Params[aspectRatio=$aspectRatio, textEncoding=$textEncoding, columns=$columns, compactionMode=$compactionMode, errorLevel=$errorLevel, macroFileID=$macroFileID, macroSegmentID=$macroSegmentID, macroSegmentsCount=$macroSegmentsCount, rows=$rows, truncate=$truncate, pdf417ECIEncoding=$pdf417ECIEncoding, isReaderInitialization=$isReaderInitialization, macroTimeStamp=$macroTimeStamp, macroSender=$macroSender, macroFileSize=$macroFileSize, macroChecksum=$macroChecksum, macroFileName=$macroFileName, macroAddressee=$macroAddressee, macroECIEncoding=$macroECIEncoding, code128Emulation=$code128Emulation, pdf417MacroTerminator=$pdf417MacroTerminator, ]';

  Map<String, dynamic> toJson() => {
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

  static List<Pdf417Params> listFromJson(List<dynamic> json) =>
      json.map((value) => new Pdf417Params.fromJson(value)).toList();

  static Map<String, Pdf417Params> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, Pdf417Params>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Pdf417Params.fromJson(value));
    }
    return map;
  }
}
