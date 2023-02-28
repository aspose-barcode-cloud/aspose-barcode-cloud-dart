import 'package:aspose_barcode_cloud/api.dart';
import 'package:test/test.dart';

import 'test_configuration.dart';

void main() {
  final remoteFileName = TestConfiguration.generateRandomString(16) + ".png";

  test('.putGenerateMultiple', () async {
    final barcode = GeneratorParams()
      ..typeOfBarcode = EncodeBarcodeType.qR_
      ..text = "test";

    final generatorParamsList = GeneratorParamsList()
      ..barcodeBuilders!.add(barcode);

    final ResultImageInfo generated =
        await TestConfiguration.BarcodeApi.putGenerateMultiple(
            remoteFileName, generatorParamsList,
            folder: TestConfiguration.folder);

    expect(generated, isNotNull);
    expect(generated.fileSize, greaterThan(0));
    expect(generated.imageHeight, greaterThan(0));
    expect(generated.imageWidth, greaterThan(0));
  });

  test('.getBarcodeRecognize', () async {
    final BarcodeResponseList recognized =
        await TestConfiguration.BarcodeApi.getBarcodeRecognize(
      remoteFileName,
      folder: TestConfiguration.folder,
      preset: PresetType.highPerformance_.value,
    );

    expect(recognized.barcodes, isNotNull);
    expect(recognized.barcodes, isNotEmpty);

    final first = recognized.barcodes![0];
    expect(first.type, equals(DecodeBarcodeType.qR_.toString()));
    expect(first.barcodeValue, "test");
  });
}
