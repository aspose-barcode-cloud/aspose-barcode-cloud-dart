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

  /// Constructor
  ApiException(this.code, this.message);

  /// Constructor with inner exception
  ApiException.withInner(
      this.code, this.message, this.innerException, this.stackTrace);

  @override
  String toString() {
    if (innerException == null) {
      return "ApiException $code: $message";
    }

    return "ApiException $code: $message (Inner exception: $innerException)\n\n$stackTrace";
  }
}
