//  import 'package:symphony_delivery_app/app/global/exceptions/base_exception.dart';

// ///Base class for all exceptions thrown by authentication services.
// class AuthException implements BaseException {
//   @override
//   final String? message;

//   ///Base class for all exceptions thrown by authentication services.
//   AuthException({required this.message});
// }

// ///Thrown when the users device is not supported by the authentication service([Biometrics]).
// class DeviceNotSupportedAuthException extends AuthException {
//   ///Thrown when the users device is not supported by the authentication service([Biometrics]).
//   DeviceNotSupportedAuthException({required String? message})
//       : super(message: message ?? 'Device not supported');
// }

// ///Thrown when biomtric authentication fails due to some exception.
// class FailedAuthBiometricException extends AuthException {
//   ///Thrown when biomtric authentication fails due to some exception.
//   FailedAuthBiometricException({required String? message})
//       : super(message: message ?? 'Failed to authenticate with biometrics');
// }

// ///Thrown when pin authentication fails due to some exception.
// class FailedAuthPINException extends AuthException {
//   ///Thrown when pin authentication fails due to some exception.
//   FailedAuthPINException({required String? message})
//       : super(message: message ?? 'Failed to authenticate with PIN');
// }

// ///Thrown when user's current auth type not matching to db auth type.
// class DifferentAuthCredentialsException extends AuthException {
//   ///Thrown when user's current auth type not matching to db auth type.
//   DifferentAuthCredentialsException({required String? message})
//       : super(message: message ?? 'Different auth credentials');
// }

// ///Thrown when user's current auth credentials are not yet set.
// class AuthCredentialNotSetException extends AuthException {
//   ///Thrown when user's current auth credentials are not yet set.
//   AuthCredentialNotSetException({required String? message})
//       : super(message: message ?? 'Auth credential not set');
// }
