import 'package:test/test.dart';
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
import 'test_config.dart';

void main() {
  test('ExceptionMessageParsed', () async {
    bool thrown = false;

    try {
      // This should throw an ApiException
      await TestConfig.generateApi.generate(EncodeBarcodeType.QR, '');
    } on ApiException catch (e) {
      // Set thrown to true since we expect an exception to be thrown
      thrown = true;
      print(e);
      // Verify the HTTP response code is 400
      expect(e.code, equals(400));
      // Verify the message is "Bad Request"
      expect(e.message, equals("Bad Request"));
      // Verify the exception type and message format
      expect(e.toString(), equals("ApiException 400: Bad Request"));
      //Check details of the error message, replacing any carriage returns
      expect(
        e.getDetails().replaceAll("\r", ""),
        equals(
          "errorInvalidInputData: Error: Field name: 'Data' errors: The Data field is required."
          "Operation Failed. The input data is not valid.",
        ),
      );
    }

    // Ensure that an exception was indeed thrown
    expect(thrown, isTrue);
  });
}
