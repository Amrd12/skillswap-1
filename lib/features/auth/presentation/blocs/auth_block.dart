// ignore_for_file: unused_element, type_literal_in_constant_pattern

import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skillswap1/core/errors/failure.dart';
import 'package:skillswap1/features/auth/presentation/blocs/auth_state.dart';

import '../../../../core/constant values/str_values.dart';
import '../../domain/usecases/auth_usecases.dart';
import 'auth_event.dart';

class AuthBlock extends Bloc<SignInEvent,SignInState> {

  AuthenticateUserUseCase authenticateUserUseCase;
  AuthBlock({
    required this.authenticateUserUseCase,
  }):super(IniateSignInState()) {
    on<InitiateSignInEvent>(_onInitiateSignIn);
    on<SignInLoadingEvent>(_onSignInLoading);
    on<SignInCompletedEvent>(_onSignInCompleted);
  }

  FutureOr<void> _onInitiateSignIn(InitiateSignInEvent event, Emitter<SignInState> emit) {

  }

  FutureOr<void> _onSignInLoading(SignInLoadingEvent event, Emitter<SignInState> emit) async{
    emit(SignInLoadingState());
    // Here you would typically call the use case to perform the sign-in operation
    // and then emit either a success or error state based on the result.
    await authenticateUserUseCase(email: event.email, password: event.password).then((result) {
      emit(SignInSuccessState("Sign-in successful!"));
    }).catchError((error) {
      emit(SignInErrorState(error.toString()));
    });
  }

  FutureOr<void> _onSignInCompleted(SignInCompletedEvent event, Emitter<SignInState> emit) {
  }

  _getproperstate(Either<Failure , SignInState> either) =>
      either.fold(
        (failure) => SignInErrorState( _errormessege(failure)),
        (success) => SignInSuccessState(SuccessMesseges.userAuthenticated),
      );
String _errormessege(Failure failure) {
    switch (failure.runtimeType) {
      case UserNotFoundFailure():
        return ErrorMessages.userNotFound ;
      case InvalidEmailFailure():
        return ErrorMessages.Invalidemail;
        case PasswordErrorFailure():
        return ErrorMessages.passworderror;
      default:
        return "Unknown error please try again in next time";
    }
  }
}
