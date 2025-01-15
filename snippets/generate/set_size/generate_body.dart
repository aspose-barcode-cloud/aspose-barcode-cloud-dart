import 'dart:io';
import 'dart:typed_data';

import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';

Configuration makeConfiguration() {
  final envToken = Platform.environment['TEST_CONFIGURATION_JWT_TOKEN'];
  if (envToken != null) {
    return Configuration(accessToken: envToken);
  } else {
    return Configuration(
      clientId: "Client Id from https://dashboard.aspose.cloud/applications",
      clientSecret:
          "Client Secret from https://dashboard.aspose.cloud/applications",
    );
  }
}

Future<void> main() async {
  final configuration = makeConfiguration();
  final apiClient = ApiClient(configuration);
  final generateApi = GenerateApi(apiClient);

  final file = File(
    "${Directory.current.path}${Platform.pathSeparator}Pdf417.png",
  );

  final generateParams = GenerateParams(
    EncodeBarcodeType.Pdf417,
    EncodeData("Aspose.BarCode.Cloud", EncodeDataType.StringData),
    BarcodeImageParams()
      ..imageFormat = BarcodeImageFormat.Png
      ..imageHeight = 2
      ..imageWidth = 3
      ..resolution = 96
      ..units = GraphicsUnit.Inch,
  );

  final Uint8List response = await generateApi.generateBody(generateParams);

  file.writeAsBytes(response);

  print("File '${file.path}' generated.");
}
