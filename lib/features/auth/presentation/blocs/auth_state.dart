import 'package:equatable/equatable.dart';
class SignInState extends Equatable{
  @override
  List<Object> get props => [];
}
class IniateSignInState extends SignInState {
  @override
  List<Object> get props => [];
}
class SignInLoadingState extends SignInState {
  @override
  List<Object> get props => [];
}
class SignInSuccessState extends SignInState {
  final String message;
  SignInSuccessState(this.message);
  @override
  List<Object> get props => [message];
}
class SignInErrorState extends SignInState {
  final String error;
  SignInErrorState(this.error);
  @override
  List<Object> get props => [error];
}
class SignUpState extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props =>[];
}
class InvalidNameState extends SignUpState{
  
  @override
  // TODO: implement props
  List<Object?> get props =>[];
}