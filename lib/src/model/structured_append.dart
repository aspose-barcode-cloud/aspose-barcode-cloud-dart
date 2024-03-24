// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

/// QR structured append parameters.
class StructuredAppend {
  /// The index of the QR structured append mode barcode. Index starts from 0.
  int? sequenceIndicator;

  /// QR structured append mode barcodes quantity. Max value is 16.
  int? totalCount;

  /// QR structured append mode parity data.
  int? parityByte;

  /// Constructor
  StructuredAppend();

  @override
  String toString() {
    return 'StructuredAppend[sequenceIndicator=$sequenceIndicator, totalCount=$totalCount, parityByte=$parityByte, ]';
  }

  /// Creates a StructuredAppend instance from a JSON representation.
  StructuredAppend.fromJson(Map<String, dynamic> json) {
    sequenceIndicator = json['sequenceIndicator'];
    totalCount = json['totalCount'];
    parityByte = json['parityByte'];
  }

  /// Returns a JSON representation of StructuredAppend.
  Map<String, dynamic> toJson() {
    return {
      'SequenceIndicator': sequenceIndicator,
      'TotalCount': totalCount,
      'ParityByte': parityByte
    };
  }

  /// Converts a list of JSON objects to a list of StructuredAppend instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of StructuredAppend instances.
  static List<StructuredAppend> listFromJson(List<dynamic> json) {
    return json.map((value) => StructuredAppend.fromJson(value)).toList();
  }
}
