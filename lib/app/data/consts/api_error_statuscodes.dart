import 'package:symphony_delivery_app/app/global/exceptions/login_exceptions.dart';

const loginErrorStatusCodes = <int>[400, 401, 403, 404, 901, 902, 903];
const warningException = <Type>[
  WrongAttemptException,
  UnauthorizedException,
  NotFoundException,
];
const errorException = <Type>[
  InvalidUserNameException,
  ChangePasswordException,
  BadRequestException,
  ForbiddenException,
];

LoginException getErrorByStatusCodes(
    {required String? message, required int? statusCode}) {
  print("$statusCode");
  final newmessage = message != null && message.isNotEmpty
      ? message
      : "Something went wrong. Status Code: $statusCode ";
  if (statusCode == 400) {
    return BadRequestException("$newmessage Status Message: Bad Request");
  } else if (statusCode == 401) {
    return UnauthorizedException("$newmessage Status Message: Unauthorized");
  } else if (statusCode == 403) {
    return ForbiddenException("$newmessage  Status Message: Forbidden");
  } else if (statusCode == 404) {
    return NotFoundException("$newmessage  Status Message: Not Found");
  } else if (statusCode == 901) {
    return ChangePasswordException(
        "$newmessage  Status Message: Password Policy");
  } else if (statusCode == 902) {
    return WrongAttemptException("$newmessage  Status Message: Wrong Attempt");
  } else if (statusCode == 903) {
    return InvalidUserNameException(
        "$newmessage Status Message: Invalid UserName");
  } else {
    return LoginException("$newmessage  Status Message: Unknown Error");
  }
}
