// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

/// The error details
class ErrorDetails {
  /// The request id
  String? requestId;

  /// Date
  DateTime? date;

  /// Constructor
  ErrorDetails();

  @override
  String toString() {
    return 'ErrorDetails[requestId=$requestId, date=$date, ]';
  }

  /// Creates a ErrorDetails instance from a JSON representation.
  ErrorDetails.fromJson(Map<String, dynamic> json) {
    requestId = json['requestId'];
    date = json['date'] == null ? null : DateTime.parse(json['date']);
  }

  /// Returns a JSON representation of ErrorDetails.
  Map<String, dynamic> toJson() {
    return {
      'RequestId': requestId,
      'Date': date == null ? '' : date!.toUtc().toIso8601String()
    };
  }

  /// Converts a list of JSON objects to a list of ErrorDetails instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of ErrorDetails instances.
  static List<ErrorDetails> listFromJson(List<dynamic> json) {
    return json.map((value) => ErrorDetails.fromJson(value)).toList();
  }
}
