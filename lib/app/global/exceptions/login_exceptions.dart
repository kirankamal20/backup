import 'package:symphony_delivery_app/app/global/exceptions/base_exception.dart';

class LoginException implements BaseException {
  @override
  final String? message;
  LoginException(this.message);
}

class UnauthorizedException extends LoginException {
  UnauthorizedException(super.message);
}

class ChangePasswordException extends LoginException {
  ChangePasswordException(super.message);
}

class WrongAttemptException extends LoginException {
  WrongAttemptException(super.message);
}

class InvalidUserNameException extends LoginException {
  InvalidUserNameException(super.message);
}

class BadRequestException extends LoginException {
  BadRequestException(super.message);
}

class ForbiddenException extends LoginException {
  ForbiddenException(super.message);
}

class NotFoundException extends LoginException {
  NotFoundException(super.message);
}
