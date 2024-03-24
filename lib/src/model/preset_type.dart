/// See QualitySettings allows to configure recognition quality and speed manually.
/// PresetType: [HighPerformance, NormalQuality, HighQualityDetection, MaxQualityDetection, HighQuality, MaxBarCodes]
class PresetType {
  /// The underlying value of PresetType enum.
  late final String _value;

  PresetType._internal(this._value);

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

  /// Creates a PresetType instance from a JSON representation.
  PresetType.fromJson(dynamic data) {
    switch (data) {
      case "HighPerformance":
      case "NormalQuality":
      case "HighQualityDetection":
      case "MaxQualityDetection":
      case "HighQuality":
      case "MaxBarCodes":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of PresetType.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of PresetType instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of PresetType instances.
  static List<PresetType> listFromJson(List<dynamic> json) {
    return json.map((value) => PresetType.fromJson(value)).toList();
  }
}
