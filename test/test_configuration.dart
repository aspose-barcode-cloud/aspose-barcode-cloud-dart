import 'package:aspose_barcode_cloud/api.dart' as barcode_api;

class TestConfiguration {
  static final ApiClient = barcode_api.ApiClient(
    clientId: "Client Id from https://dashboard.aspose.cloud/applications",
    clientSecret:
        "Client Secret from https://dashboard.aspose.cloud/applications",
  );
}
