import 'dart:convert';

class UserModel {
  String userId;
  String userName;
  String password;
  String deviceId;
  UserModel({
    required this.userId,
    required this.userName,
    required this.password,
    required this.deviceId,
  });

  UserModel copyWith({
    String? userId,
    String? userName,
    String? password,
    String? deviceId,
  }) {
    return UserModel(
      userId: userId ?? this.userId,
      userName: userName ?? this.userName,
      password: password ?? this.password,
      deviceId: deviceId ?? this.deviceId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'userName': userName,
      'password': password,
      'deviceId': deviceId,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      userId: map['userId'] ?? '',
      userName: map['userName'] ?? '',
      password: map['password'] ?? '',
      deviceId: map['deviceId'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(userId: $userId, userName: $userName, password: $password, deviceId: $deviceId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.userId == userId &&
        other.userName == userName &&
        other.password == password &&
        other.deviceId == deviceId;
  }

  @override
  int get hashCode {
    return userId.hashCode ^
        userName.hashCode ^
        password.hashCode ^
        deviceId.hashCode;
  }
}
