part of aspose_barcode_cloud.api;

class ErrorDetails {
  ErrorDetails();

  ErrorDetails.fromJson(Map<String, dynamic> json) {
    requestId = json['requestId'];
    date = json['date'] == null ? null : DateTime.parse(json['date']);
  }
  /* The request id */
  String? requestId = null;

/* Date */
  DateTime? date = null;

  @override
  String toString() => 'ErrorDetails[requestId=$requestId, date=$date, ]';

  Map<String, dynamic> toJson() => {
        'RequestId': requestId,
        'Date': date == null ? '' : date!.toUtc().toIso8601String()
      };

  static List<ErrorDetails> listFromJson(List<dynamic> json) =>
      json.map((value) => new ErrorDetails.fromJson(value)).toList();

  static Map<String, ErrorDetails> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, ErrorDetails>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ErrorDetails.fromJson(value));
    }
    return map;
  }
}
