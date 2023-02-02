part of aspose_barcode_cloud.api;

class ApiException implements Exception {
  ApiException(this.code, this.message);

  ApiException.withInner(
      this.code, this.message, this.innerException, this.stackTrace);
  int code = 0;
  String? message = null;
  Exception? innerException = null;
  StackTrace? stackTrace = null;

  @override
  String toString() {
    if (message == null) {
      return "ApiException";
    }

    if (innerException == null) {
      return "ApiException $code: $message";
    }

    return "ApiException $code: $message (Inner exception: ${innerException})\n\n" +
        stackTrace.toString();
  }
}
