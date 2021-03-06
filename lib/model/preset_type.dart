part of aspose_barcode_cloud.api;

class PresetType {
  /// The underlying value of this enum member.
  String? value;

  PresetType._internal(this.value);

  /// See QualitySettings allows to configure recognition quality and speed manually.
  static PresetType highPerformance_ = PresetType._internal("HighPerformance");

  /// See QualitySettings allows to configure recognition quality and speed manually.
  static PresetType normalQuality_ = PresetType._internal("NormalQuality");

  /// See QualitySettings allows to configure recognition quality and speed manually.
  static PresetType highQualityDetection_ =
      PresetType._internal("HighQualityDetection");

  /// See QualitySettings allows to configure recognition quality and speed manually.
  static PresetType maxQualityDetection_ =
      PresetType._internal("MaxQualityDetection");

  /// See QualitySettings allows to configure recognition quality and speed manually.
  static PresetType highQuality_ = PresetType._internal("HighQuality");

  /// See QualitySettings allows to configure recognition quality and speed manually.
  static PresetType maxBarCodes_ = PresetType._internal("MaxBarCodes");

  PresetType.fromJson(dynamic data) {
    switch (data) {
      case "HighPerformance":
        value = data;
        break;
      case "NormalQuality":
        value = data;
        break;
      case "HighQualityDetection":
        value = data;
        break;
      case "MaxQualityDetection":
        value = data;
        break;
      case "HighQuality":
        value = data;
        break;
      case "MaxBarCodes":
        value = data;
        break;
      default:
        throw ('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(PresetType data) {
    return data.value;
  }
}
