import 'dart:convert';

class LoginModel {
  String userId;
  String message;
  String status;
  LoginModel({
    required this.userId,
    required this.message,
    required this.status,
  });

  LoginModel copyWith({
    String? userId,
    String? message,
    String? status,
  }) {
    return LoginModel(
      userId: userId ?? this.userId,
      message: message ?? this.message,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'message': message,
      'status': status,
    };
  }

  factory LoginModel.fromMap(Map<String, dynamic> map) {
    return LoginModel(
      userId: map['userId'] ?? '',
      message: map['message'] ?? '',
      status: map['status'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginModel.fromJson(String source) => LoginModel.fromMap(json.decode(source));

  @override
  String toString() => 'LoginModel(userId: $userId, message: $message, status: $status)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is LoginModel &&
      other.userId == userId &&
      other.message == message &&
      other.status == status;
  }

  @override
  int get hashCode => userId.hashCode ^ message.hashCode ^ status.hashCode;
}