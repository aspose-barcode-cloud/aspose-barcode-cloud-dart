// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../api.dart';

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
    checksumMode = CodabarChecksumMode.fromJson(json['checksumMode']);
    startSymbol = CodabarSymbol.fromJson(json['startSymbol']);
    stopSymbol = CodabarSymbol.fromJson(json['stopSymbol']);
  }

  Map<String, dynamic> toJson() {
    return {
      'ChecksumMode': checksumMode,
      'StartSymbol': startSymbol,
      'StopSymbol': stopSymbol
    };
  }

  static List<CodabarParams> listFromJson(List<dynamic> json) {
    return json.map((value) => CodabarParams.fromJson(value)).toList();
  }

  static Map<String, CodabarParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = Map<String, CodabarParams>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = CodabarParams.fromJson(value));
    }
    return map;
  }
}
