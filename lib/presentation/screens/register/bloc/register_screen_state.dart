part of 'register_screen_bloc.dart';

class RegisterScreenState {
  UserResponse? userRequest;
  Status? status;

  RegisterScreenState({this.userRequest, this.status});

  RegisterScreenState copy({UserResponse? userRequest, Status? status}) {
    return RegisterScreenState(userRequest: userRequest ?? this.userRequest);
  }
}
