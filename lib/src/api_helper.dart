const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};

/// Represents a query parameter.
class QueryParam {
  /// The name of the parameter.
  final String name;

  /// The value of the parameter.
  final String value;

  /// Constructor
  QueryParam(this.name, this.value);
}

/// port from Java version
Iterable<QueryParam> convertParametersForCollectionFormat(
    String collectionFormat, String name, dynamic value) {
  final params = <QueryParam>[];

  // preconditions
  if (name.isEmpty || value == null) {
    return params;
  }

  if (value is! List) {
    params.add(QueryParam(name, parameterToString(value)));
    return params;
  }

  final List values = value;

  // get the collection format
  collectionFormat =
      collectionFormat.isEmpty ? "csv" : collectionFormat; // default: csv

  if (collectionFormat == "multi") {
    return values.map((v) => QueryParam(name, parameterToString(v)));
  }

  final String delimiter = _delimiters[collectionFormat] ?? ",";

  params.add(QueryParam(
      name, values.map((v) => parameterToString(v)).join(delimiter)));
  return params;
}

/// Format the given parameter object into string.
String parameterToString(dynamic value) {
  if (value == null) {
    return '';
  } else if (value is DateTime) {
    return value.toUtc().toIso8601String();
  } else {
    return value.toString();
  }
}
