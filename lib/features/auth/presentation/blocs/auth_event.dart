import 'package:equatable/equatable.dart';
class SignInEvent extends Equatable{
  @override
  List<Object> get props => [];
}
class InitiateSignInEvent extends SignInEvent {
  @override
  List<Object> get props => [];
}
class SignInLoadingEvent extends SignInEvent {
  final String email;
  final String password;
  SignInLoadingEvent({required this.email, required this.password});
  @override
  List<Object> get props => [];
}
class SignInCompletedEvent extends SignInEvent {
  final String message;
  SignInCompletedEvent(this.message);
  @override
  List<Object> get props => [message];
}
