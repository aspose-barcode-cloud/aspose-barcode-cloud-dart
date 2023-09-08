import 'package:aspose_barcode_cloud/api.dart';
import 'package:test/test.dart';

import 'test_config.dart';

void main() {
  final remoteFileName = TestConfig.generateRandomString(16) + ".png";

  test('.putBarcodeGenerateFile', () async {
    final ResultImageInfo generated = await TestConfig.barcodeApi
        .putBarcodeGenerateFile(
            remoteFileName, EncodeBarcodeType.qR_.toString(), remoteFileName,
            folder: TestConfig.folder);

    expect(generated, isNotNull);
    expect(generated.fileSize, greaterThan(0));
    expect(generated.imageHeight, greaterThan(0));
    expect(generated.imageWidth, greaterThan(0));
  });

  test('.putBarcodeRecognizeFromBody', () async {
    final BarcodeResponseList recognized =
        await TestConfig.barcodeApi.putBarcodeRecognizeFromBody(
      remoteFileName,
      ReaderParams()..preset = PresetType.highPerformance_,
      folder: TestConfig.folder,
    );

    expect(recognized.barcodes, isNotNull);
    expect(recognized.barcodes, isNotEmpty);

    final first = recognized.barcodes![0];
    expect(first.type, equals("QR"));
    expect(first.barcodeValue, equals(remoteFileName));
  });
}
