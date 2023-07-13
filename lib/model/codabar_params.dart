part of aspose_barcode_cloud.api;

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
class CodabarParams {
  /* Checksum algorithm for Codabar barcodes. Default value: CodabarChecksumMode.Mod16. To enable checksum calculation set value EnableChecksum.Yes to property EnableChecksum. */
  CodabarChecksumMode? checksumMode = null;

/* Start symbol (character) of Codabar symbology. Default value: CodabarSymbol.A */
  CodabarSymbol? startSymbol = null;

/* Stop symbol (character) of Codabar symbology. Default value: CodabarSymbol.A */
  CodabarSymbol? stopSymbol = null;

  CodabarParams();

  @override
  String toString() {
    return 'CodabarParams[checksumMode=$checksumMode, startSymbol=$startSymbol, stopSymbol=$stopSymbol, ]';
  }

  CodabarParams.fromJson(Map<String, dynamic> json) {
    checksumMode = new CodabarChecksumMode.fromJson(json['checksumMode']);
    startSymbol = new CodabarSymbol.fromJson(json['startSymbol']);
    stopSymbol = new CodabarSymbol.fromJson(json['stopSymbol']);
  }

  Map<String, dynamic> toJson() {
    return {
      'ChecksumMode': checksumMode,
      'StartSymbol': startSymbol,
      'StopSymbol': stopSymbol
    };
  }

  static List<CodabarParams> listFromJson(List<dynamic> json) {
    return json.map((value) => new CodabarParams.fromJson(value)).toList();
  }

  static Map<String, CodabarParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, CodabarParams>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CodabarParams.fromJson(value));
    }
    return map;
  }
}
