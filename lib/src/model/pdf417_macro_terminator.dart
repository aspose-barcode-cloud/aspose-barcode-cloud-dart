///
/// Pdf417MacroTerminator: [Auto, None, Set]
class Pdf417MacroTerminator {
  /// The underlying value of Pdf417MacroTerminator enum.
  late final String _value;

  Pdf417MacroTerminator._internal(this._value);

  ///
  // ignore: non_constant_identifier_names
  static final Pdf417MacroTerminator Auto =
      Pdf417MacroTerminator._internal("Auto");

  ///
  // ignore: non_constant_identifier_names
  static final Pdf417MacroTerminator None =
      Pdf417MacroTerminator._internal("None");

  ///
  // ignore: non_constant_identifier_names
  static final Pdf417MacroTerminator Set =
      Pdf417MacroTerminator._internal("Set");

  /// Creates a Pdf417MacroTerminator instance from a JSON representation.
  Pdf417MacroTerminator.fromJson(dynamic data) {
    switch (data) {
      case "Auto":
      case "None":
      case "Set":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of Pdf417MacroTerminator.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of Pdf417MacroTerminator instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of Pdf417MacroTerminator instances.
  static List<Pdf417MacroTerminator> listFromJson(List<dynamic> json) {
    return json.map((value) => Pdf417MacroTerminator.fromJson(value)).toList();
  }
}
