import 'package:aspose_barcode_cloud/api.dart';
import 'package:test/test.dart';

import 'test_configuration.dart';

void main() {
  final remoteFileName = TestConfiguration.generateRandomString(16) + ".png";

  test('.putBarcodeGenerateFile', () async {
    final ResultImageInfo generated = await TestConfiguration.barcodeApi
        .putBarcodeGenerateFile(
            remoteFileName, EncodeBarcodeType.qR_.toString(), remoteFileName,
            folder: TestConfiguration.folder);

    expect(generated, isNotNull);
    expect(generated.fileSize, greaterThan(0));
    expect(generated.imageHeight, greaterThan(0));
    expect(generated.imageWidth, greaterThan(0));
  });

  test('.putBarcodeRecognizeFromBody', () async {
    final BarcodeResponseList recognized =
        await TestConfiguration.barcodeApi.putBarcodeRecognizeFromBody(
      remoteFileName,
      ReaderParams()..preset = PresetType.highPerformance_,
      folder: TestConfiguration.folder,
    );

    expect(recognized.barcodes, isNotNull);
    expect(recognized.barcodes, isNotEmpty);

    final first = recognized.barcodes![0];
    expect(first.type, equals("QR"));
    expect(first.barcodeValue, equals(remoteFileName));
  });
}
