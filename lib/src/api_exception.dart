import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';

/// Represents an exception that is thrown when an error occurs in the API.
class ApiException implements Exception {
  /// The error code.
  final int code;

  /// The error message
  final String message;

  /// The inner exception
  Exception? innerException;

  /// The stack trace
  StackTrace? stackTrace;

  ///ApiErrorResponse from server
  ApiErrorResponse? response;

  /// Constructor
  ApiException(this.code, this.message);

  /// Constructor with inner exception
  ApiException.withInner(
      this.code, this.message, this.innerException, this.stackTrace);

  /// Constructor with ApiErrorResponse
  ApiException.withResponse(this.code, this.message, this.response);

  /// Get the error details
  String getDetails() {
    if (response != null) {
      ApiError? err = response!.error;
      StringBuffer sb = StringBuffer();

      sb.write('${err.code}: ');

      sb.write(err.message);

      if (err.description != null) {
        sb.write(err.description);
      }
      return sb.toString();
    }

    return '';
  }

  @override
  String toString() {
    if (innerException == null) {
      return "ApiException $code: $message";
    }

    return "ApiException $code: $message (Inner exception: $innerException)\n\n$stackTrace";
  }
}
