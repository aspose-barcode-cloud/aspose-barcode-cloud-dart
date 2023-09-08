part of aspose_barcode_cloud.api;

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
class StructuredAppend {
  /* The index of the QR structured append mode barcode. Index starts from 0. */
  int? sequenceIndicator = null;

/* QR structured append mode barcodes quantity. Max value is 16. */
  int? totalCount = null;

/* QR structured append mode parity data. */
  int? parityByte = null;

  StructuredAppend();

  @override
  String toString() {
    return 'StructuredAppend[sequenceIndicator=$sequenceIndicator, totalCount=$totalCount, parityByte=$parityByte, ]';
  }

  StructuredAppend.fromJson(Map<String, dynamic> json) {
    sequenceIndicator = json['sequenceIndicator'];
    totalCount = json['totalCount'];
    parityByte = json['parityByte'];
  }

  Map<String, dynamic> toJson() {
    return {
      'SequenceIndicator': sequenceIndicator,
      'TotalCount': totalCount,
      'ParityByte': parityByte
    };
  }

  static List<StructuredAppend> listFromJson(List<dynamic> json) {
    return json.map((value) => StructuredAppend.fromJson(value)).toList();
  }

  static Map<String, StructuredAppend> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = Map<String, StructuredAppend>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = StructuredAppend.fromJson(value));
    }
    return map;
  }
}
