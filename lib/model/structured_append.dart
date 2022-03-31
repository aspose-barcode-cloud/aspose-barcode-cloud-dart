part of aspose_barcode_cloud.api;

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
    return json.map((value) => new StructuredAppend.fromJson(value)).toList();
  }

  static Map<String, StructuredAppend> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StructuredAppend>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new StructuredAppend.fromJson(value));
    }
    return map;
  }
}
