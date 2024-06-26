import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
import 'package:http/http.dart' show MultipartFile;
import 'package:test/test.dart';

import 'test_config.dart';

void main() {
  final fileToRecognize = "qr.png";

  test('.postBarcodeRecognizeFromUrlOrContent', () async {
    final barcode = await MultipartFile.fromPath("image", fileToRecognize);
    final BarcodeResponseList recognized =
        await TestConfig.barcodeApi.postBarcodeRecognizeFromUrlOrContent(
      image: barcode,
      preset: PresetType.HighPerformance.toString(),
      types: [DecodeBarcodeType.QR, DecodeBarcodeType.DataMatrix],
    );

    expect(recognized, isNotNull);
    expect(recognized.barcodes, isNotEmpty);
    expect(recognized.barcodes![0].type, equals('QR'));
    expect(recognized.barcodes![0].barcodeValue, equals('text'));
  });

  test('.postBarcodeRecognizeFromUrlOrContent with Timeout', () async {
    final barcode = await MultipartFile.fromPath("image", fileToRecognize);
    expect(
      () async => {
        await TestConfig.barcodeApi.postBarcodeRecognizeFromUrlOrContent(
          image: barcode,
          timeout: 1,
        )
      },
      throwsA(predicate((e) => e is ApiException && e.code == 408)),
    );
  });
}
