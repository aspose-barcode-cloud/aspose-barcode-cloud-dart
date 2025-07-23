// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';

import 'byte_stream.dart';

/// Converts a [Map] from parameter names to values to a URL query string.
///
///     mapToQuery({"foo": "bar", "baz": "bang"});
///     //=> "foo=bar&baz=bang"
String mapToQuery(Map<String, String> map, {required Encoding encoding}) =>
    map.entries
        .map(
          (e) => '${Uri.encodeQueryComponent(e.key, encoding: encoding)}'
              '=${Uri.encodeQueryComponent(e.value, encoding: encoding)}',
        )
        .join('&');

/// Returns the [Encoding] that corresponds to [charset].
///
/// Returns [fallback] if [charset] is null or if no [Encoding] was found that
/// corresponds to [charset].
Encoding encodingForCharset(String? charset, [Encoding fallback = latin1]) {
  if (charset == null) return fallback;
  return Encoding.getByName(charset) ?? fallback;
}

/// Returns the [Encoding] that corresponds to [charset].
///
/// Throws a [FormatException] if no [Encoding] was found that corresponds to
/// [charset].
Encoding requiredEncodingForCharset(String charset) =>
    Encoding.getByName(charset) ??
    (throw FormatException('Unsupported encoding "$charset".'));

/// A regular expression that matches strings that are composed entirely of
/// ASCII-compatible characters.
final _asciiOnly = RegExp(r'^[\x00-\x7F]+$');

/// Returns whether [string] is composed entirely of ASCII-compatible
/// characters.
bool isPlainAscii(String string) => _asciiOnly.hasMatch(string);

/// Converts a [Stream] of byte lists to a single [ByteStream].
/// If [stream] is already a [ByteStream], it's returned unmodified.
ByteStream toByteStream(Stream<List<int>> stream) {
  if (stream is ByteStream) return stream;
  return ByteStream(stream);
}

/// Calls [onDone] once [stream] (a single-subscription [Stream]) is finished.
///
/// The return value, also a single-subscription [Stream] should be used in
/// place of [stream] after calling this method.
Stream<T> onDone<T>(Stream<T> stream, void Function() onDone) =>
    stream.transform(
      StreamTransformer.fromHandlers(
        handleDone: (sink) {
          sink.close();
          onDone();
        },
      ),
    );
