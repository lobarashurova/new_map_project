part of 'register_screen_bloc.dart';

@immutable
abstract class RegisterScreenEvent {}


class RegisterUser extends RegisterScreenEvent{
  UserRequest userRequest;

  RegisterUser(this.userRequest);
}