class UserModel {
  Object? id;
  String name;
  String email;
  String contact;

  UserModel({
    this.id,
    required this.name,
    required this.email,
    required this.contact,
  });

  UserModel copyWith({
    Object? id,
    String? name,
    String? email,
    String? contact,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      contact: contact ?? this.contact,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'contact': contact,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as Object,
      name: map['name'] as String,
      email: map['email'] as String,
      contact: map['contact'] as String,
    );
  }
}
