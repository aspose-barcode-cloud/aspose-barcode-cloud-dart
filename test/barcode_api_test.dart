import 'dart:typed_data';

import 'package:aspose_barcode_cloud/api.dart';
import 'package:http/http.dart';
import 'package:test/test.dart';

import 'test_config.dart';

void main() {
  test(
    '.getBarcodeGenerate generates and then .postBarcodeRecognizeFromUrlOrContent recognizes it',
    () async {
      // Generate image with barcode
      final Uint8List generated =
          await TestConfig.barcodeApi.getBarcodeGenerate('QR', 'text');

      expect(generated, isNotNull);
      expect(generated, isNotEmpty);

      // Recognize generated image
      final barcode = MultipartFile.fromBytes('image', generated.toList(),
          filename: 'barcode.png');
      final BarcodeResponseList recognized =
          await TestConfig.barcodeApi.postBarcodeRecognizeFromUrlOrContent(
        image: barcode,
        preset: PresetType.highPerformance_.toString(),
      );

      expect(recognized, isNotNull);
      expect(recognized.barcodes, isNotEmpty);
      expect(recognized.barcodes![0].type, equals('QR'));
      expect(recognized.barcodes![0].barcodeValue, equals('text'));
    },
  );
}
