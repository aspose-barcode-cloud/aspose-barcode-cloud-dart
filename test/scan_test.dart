import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
import 'package:http/http.dart' show MultipartFile;
import 'package:test/test.dart';

import 'test_config.dart';

void main() {
  final fileToRecognize = "qr_and_code128.png";

  test(
    '.scanBarcodes can scan 2 type',
    () async {
      // TODO: Fix that field in MultipartFile can be any
      final barcode =
          await MultipartFile.fromPath("ImageFile", fileToRecognize);
      final BarcodeResponseList recognized =
          await TestConfig.barcodeApi.scanBarcode(
        barcode,
        decodeTypes: [DecodeBarcodeType.Code128, DecodeBarcodeType.QR],
      );

      expect(recognized, isNotNull);
      expect(recognized.barcodes, isNotEmpty);
      expect(recognized.barcodes!.length, equals(2));

      expect(recognized.barcodes![0].type, equals('QR'));
      expect(recognized.barcodes![0].barcodeValue, equals('QR text'));

      expect(recognized.barcodes![1].type, equals('Code128'));
      expect(recognized.barcodes![1].barcodeValue, equals('Code128 text'));
    },
  );
}
