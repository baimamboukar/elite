// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class EliteUser {
  final String? id;
  final String name;
  final String email;
  final String phone;
  final String? imageURL;
  EliteUser({
    required this.name,
    required this.email,
    required this.phone,
    this.id,
    this.imageURL,
  });

  EliteUser copyWith({
    String? id,
    String? name,
    String? email,
    String? phone,
    String? imageURL,
  }) {
    return EliteUser(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      imageURL: imageURL ?? this.imageURL,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'imageURL': imageURL,
    };
  }

  factory EliteUser.fromMap(Map<String, dynamic> map) {
    return EliteUser(
      id: map['id'] != null ? map['id'] as String : null,
      name: (map['name'] ?? '') as String,
      email: (map['email'] ?? '') as String,
      phone: (map['phone'] ?? '') as String,
      imageURL: map['imageURL'] != null ? map['imageURL'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory EliteUser.fromJson(String source) =>
      EliteUser.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'EliteUser(id: $id, name: $name, email: $email, phone: $phone, imageURL: $imageURL)';
  }

  @override
  bool operator ==(covariant EliteUser other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.email == email &&
        other.phone == phone &&
        other.imageURL == imageURL;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        email.hashCode ^
        phone.hashCode ^
        imageURL.hashCode;
  }
}
