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

  final fileName = "${Directory.current.path}${Platform.pathSeparator}qr.png";

  final generateParams = GenerateParams(
    EncodeBarcodeType.QR,
    EncodeData("https://products.aspose.cloud/barcode/family/",
        EncodeDataType.StringData),
    BarcodeImageParams()
      ..foregroundColor = "DarkBlue"
      ..backgroundColor = "LightGray"
      ..imageFormat = BarcodeImageFormat.Png,
  );

  final Uint8List response =
      await generateApi.barcodeGenerateBodyPost(generateParams);

  File(fileName).writeAsBytesSync(response);

  print("File '$fileName' generated.");
}
