// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

/// Codabar parameters.
class CodabarParams {
  /// Checksum algorithm for Codabar barcodes. Default value: CodabarChecksumMode.Mod16. To enable checksum calculation set value EnableChecksum.Yes to property EnableChecksum.
  CodabarChecksumMode? checksumMode;

  /// Start symbol (character) of Codabar symbology. Default value: CodabarSymbol.A
  CodabarSymbol? startSymbol;

  /// Stop symbol (character) of Codabar symbology. Default value: CodabarSymbol.A
  CodabarSymbol? stopSymbol;

  /// Constructor
  CodabarParams();

  @override
  String toString() {
    return 'CodabarParams[checksumMode=$checksumMode, startSymbol=$startSymbol, stopSymbol=$stopSymbol, ]';
  }

  /// Creates a CodabarParams instance from a JSON representation.
  CodabarParams.fromJson(Map<String, dynamic> json) {
    checksumMode = CodabarChecksumMode.fromJson(json['checksumMode']);
    startSymbol = CodabarSymbol.fromJson(json['startSymbol']);
    stopSymbol = CodabarSymbol.fromJson(json['stopSymbol']);
  }

  /// Returns a JSON representation of CodabarParams.
  Map<String, dynamic> toJson() {
    return {
      'ChecksumMode': checksumMode,
      'StartSymbol': startSymbol,
      'StopSymbol': stopSymbol
    };
  }

  /// Converts a list of JSON objects to a list of CodabarParams instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of CodabarParams instances.
  static List<CodabarParams> listFromJson(List<dynamic> json) {
    return json.map((value) => CodabarParams.fromJson(value)).toList();
  }
}
