part of aspose_barcode_cloud.api;

// ignore_for_file: non_constant_identifier_names
class ErrorDetails {
  /* The request id */
  String? requestId = null;

/* Date */
  DateTime? date = null;

  ErrorDetails();

  @override
  String toString() {
    return 'ErrorDetails[requestId=$requestId, date=$date, ]';
  }

  ErrorDetails.fromJson(Map<String, dynamic> json) {
    requestId = json['requestId'];
    date = json['date'] == null ? null : DateTime.parse(json['date']);
  }

  Map<String, dynamic> toJson() {
    return {
      'RequestId': requestId,
      'Date': date == null ? '' : date!.toUtc().toIso8601String()
    };
  }

  static List<ErrorDetails> listFromJson(List<dynamic> json) {
    return json.map((value) => new ErrorDetails.fromJson(value)).toList();
  }

  static Map<String, ErrorDetails> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, ErrorDetails>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ErrorDetails.fromJson(value));
    }
    return map;
  }
}
