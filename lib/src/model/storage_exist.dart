// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

/// Storage exists
class StorageExist {
  /// Shows that the storage exists.
  bool? exists;

  /// Constructor
  StorageExist();

  @override
  String toString() {
    return 'StorageExist[exists=$exists, ]';
  }

  /// Creates a StorageExist instance from a JSON representation.
  StorageExist.fromJson(Map<String, dynamic> json) {
    exists = json['exists'];
  }

  /// Returns a JSON representation of StorageExist.
  Map<String, dynamic> toJson() {
    return {'Exists': exists};
  }

  /// Converts a list of JSON objects to a list of StorageExist instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of StorageExist instances.
  static List<StorageExist> listFromJson(List<dynamic> json) {
    return json.map((value) => StorageExist.fromJson(value)).toList();
  }
}
