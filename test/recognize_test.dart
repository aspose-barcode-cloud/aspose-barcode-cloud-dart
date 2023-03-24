import 'package:aspose_barcode_cloud/api.dart';
import 'package:http/http.dart' show MultipartFile;
import 'package:test/test.dart';

import 'test_configuration.dart';

void main() {
  final fileToRecognize = "qr.png";

  test('.postBarcodeRecognizeFromUrlOrContent', () async {
    final barcode = await MultipartFile.fromPath("image", fileToRecognize);
    final BarcodeResponseList recognized = await TestConfiguration.BarcodeApi.postBarcodeRecognizeFromUrlOrContent(
      image: barcode,
      preset: PresetType.highPerformance_.toString(),
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
        await TestConfiguration.BarcodeApi.postBarcodeRecognizeFromUrlOrContent(
          image: barcode,
          preset: PresetType.highPerformance_.toString(),
          timeout: 1,
        )
      },
      throwsA(predicate((e) => e is ApiException && e.code == 408)),
    );
  });
}
