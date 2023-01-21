part of '../../pages.dart';

// class User {
//   final int id;
//   final String email;
//   final String first_name;
//   final String last_name;
//   final String avatar;
//
//   const User({
//     required this.id,
//     required this.email,
//     required this.first_name,
//     required this.last_name,
//     required this.avatar,
//   });
//
//   factory User.fromJson(Map<String, dynamic> json) {
//     return User(
//       id: json['id'],
//       email: json['email'],
//       first_name: json['first_name'],
//       last_name: json['last_name'],
//       avatar: json['avatar'],
//     );
//   }
// }

class UserModel {
  static final List<String> values = [
  id,
  email,
  first_name,
  last_name,
  avatar
  ];

  static final String id = 'id';
  static final String email = 'email';
  static final String first_name = 'first_name';
  static final String last_name = 'last_name';
  static final String avatar = 'avatar';
}

class User {
  // int sounding_id;
  String email;
  String first_name;
  String last_name;
  String avatar;

  User({
    // required this.sounding_id,
    required this.email,
    required this.first_name,
    required this.last_name,
    required this.avatar
  });

  User copy({
    // int? sounding_id,
    Null email,
    String? first_name,
    String? last_name,
    String? avatar
  }) =>
      User(
        // sounding_id: sounding_id ?? this.sounding_id,
          email: email ?? this.email,
          first_name: first_name ?? this.first_name,
          last_name: last_name ?? this.last_name,
          avatar: avatar ?? this.avatar
      );

  static User fromJson(Map<String, Object?> json) => User(
    // sounding_id: json[TrSoundingFields.sounding_id] as int,
      email: json[UserModel.email] as String,
      first_name: json[UserModel.first_name] as String,
      last_name: json[UserModel.last_name] as String,
      avatar: json[UserModel.avatar] as String,
  );

  Map<String, Object?> toJson() => {
    // TrSoundingFields.sounding_id: sounding_id,
    UserModel.email: email,
    UserModel.first_name: first_name,
    UserModel.last_name: last_name,
    UserModel.avatar: avatar,
  };
}