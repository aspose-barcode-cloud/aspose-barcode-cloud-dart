// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

/// Object exists
class ObjectExist {
  /// Indicates that the file or folder exists.
  bool? exists;

  /// True if it is a folder, false if it is a file.
  bool? isFolder;

  /// Constructor
  ObjectExist();

  @override
  String toString() {
    return 'ObjectExist[exists=$exists, isFolder=$isFolder, ]';
  }

  /// Creates a ObjectExist instance from a JSON representation.
  ObjectExist.fromJson(Map<String, dynamic> json) {
    exists = json['exists'];
    isFolder = json['isFolder'];
  }

  /// Returns a JSON representation of ObjectExist.
  Map<String, dynamic> toJson() {
    return {'Exists': exists, 'IsFolder': isFolder};
  }

  /// Converts a list of JSON objects to a list of ObjectExist instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of ObjectExist instances.
  static List<ObjectExist> listFromJson(List<dynamic> json) {
    return json.map((value) => ObjectExist.fromJson(value)).toList();
  }
}
