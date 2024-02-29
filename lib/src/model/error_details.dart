// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

class ErrorDetails {
  /* The request id */
  String? requestId;

/* Date */
  DateTime? date;

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
    return json.map((value) => ErrorDetails.fromJson(value)).toList();
  }

  static Map<String, ErrorDetails> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = <String, ErrorDetails>{};
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = ErrorDetails.fromJson(value));
    }
    return map;
  }
}
