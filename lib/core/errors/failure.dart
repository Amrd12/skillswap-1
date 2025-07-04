import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {}
class InvalidEmailFailure extends Failure {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class OfflineFailure extends Failure {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class ServerFailure extends Failure {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class CacheFailure extends Failure {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class FireStoreFailure extends Failure {
  @override
  List<Object?> get props => [];
}
class AuthenticationFailure extends Failure {
  @override
  List<Object?> get props => [];
}
class UserNotFoundFailure extends Failure {
  @override
  List<Object?> get props => [];
}
class UserAlreadyExistsFailure extends Failure {
  @override
  List<Object?> get props => [];
}
class PasswordErrorFailure extends Failure {
  @override
  List<Object?> get props => [];
}