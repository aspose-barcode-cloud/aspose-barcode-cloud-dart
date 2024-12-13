import 'package:test/test.dart';
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
import 'test_config.dart';

void main() {
  group('barcodeGenerateApiTests', () {
    test('should generate image with generateGetV4', () async {
      final generated = await TestConfig.generateApi
          .generateGetV4(
              EncodeBarcodeType.QR, 'Testing generator',
              foregroundColor: '#001100');

      final imageSize = generated.length;
      expect(imageSize, greaterThan(0), reason: 'ImageSize=$imageSize');
    });

    test('should generate image with generateBodyPostV4', () async {
      final imageParams = BarcodeImageParams();
      imageParams.backgroundColor = '#ffddff';

      final encodeData = EncodeData("Testing generator");

      final generateParams =
          GenerateParams(EncodeBarcodeType.Pdf417, encodeData, imageParams);

      final generated =
          await TestConfig.generateApi.generateBodyPostV4(generateParams);

      final imageSize = generated.length;
      expect(imageSize, greaterThan(0), reason: 'ImageSize=$imageSize');
    });

    test('should generate image with generateFormPostV4', () async {
      final generated = await TestConfig.generateApi
          .generateFormPostV4(
              EncodeBarcodeType.QR, 'Testing generator',
              dataType: EncodeDataType.StringData, rotationAngle: 90);

      final imageSize = generated.lengthInBytes;
      expect(imageSize, greaterThan(0), reason: 'ImageSize=$imageSize');
    });
  });
}
