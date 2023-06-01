// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

class Payload {
  final String? message;
  final String? title;
  final List<String> playerIDs;
  final Map<String, String> contents;
  final Map<String, String> headings;
  final Map<String, String> data;
  Payload({
    required this.playerIDs,
    required this.contents,
    required this.headings,
    required this.data,
    this.message,
    this.title,
  });

  Payload copyWith({
    String? message,
    String? title,
    List<String>? playerIDs,
    Map<String, String>? contents,
    Map<String, String>? headings,
    Map<String, String>? data,
  }) {
    return Payload(
      message: message ?? this.message,
      title: title ?? this.title,
      playerIDs: playerIDs ?? this.playerIDs,
      contents: contents ?? this.contents,
      headings: headings ?? this.headings,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'title': title,
      'playerIDs': playerIDs,
      'contents': contents,
      'headings': headings,
      'data': data,
    };
  }

  factory Payload.fromMap(Map<String, dynamic> map) {
    return Payload(
      message: (map['message'] ?? '') as String,
      title: (map['title'] ?? '') as String,
      playerIDs: List<String>.from(
        (map['playerIDs'] ?? const <String>[]) as List<String>,
      ),
      contents: Map<String, String>.from(
        (map['contents'] ?? const <Map<String, String>>{})
            as Map<String, String>,
      ),
      headings: Map<String, String>.from(
        (map['headings'] ?? const <Map<String, String>>{})
            as Map<String, String>,
      ),
      data: Map<String, String>.from(
        (map['data'] ?? const <Map<String, String>>{}) as Map<String, String>,
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Payload.fromJson(String source) =>
      Payload.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Payload(message: $message, title: $title, playerIDs: $playerIDs, contents: $contents, headings: $headings, data: $data)';
  }

  @override
  bool operator ==(covariant Payload other) {
    if (identical(this, other)) return true;
    final collectionEquals = const DeepCollectionEquality().equals;

    return other.message == message &&
        other.title == title &&
        collectionEquals(other.playerIDs, playerIDs) &&
        collectionEquals(other.contents, contents) &&
        collectionEquals(other.headings, headings) &&
        collectionEquals(other.data, data);
  }

  @override
  int get hashCode {
    return message.hashCode ^
        title.hashCode ^
        playerIDs.hashCode ^
        contents.hashCode ^
        headings.hashCode ^
        data.hashCode;
  }
}
