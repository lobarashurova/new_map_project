import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:new_map_project/di/app_di.dart';
import 'package:new_map_project/domain/AppRepository.dart';

import '../../../../data/enum/Status.dart';
import '../../../../data/model/source/remote/request/user/UserRequest.dart';
import '../../../../data/model/source/remote/response/user/UserResponse.dart';

part 'register_screen_event.dart';

part 'register_screen_state.dart';

class RegisterScreenBloc
    extends Bloc<RegisterScreenEvent, RegisterScreenState> {
  RegisterScreenBloc() : super(RegisterScreenState()) {
    final repository = getIt<AppRepository>();
    on<RegisterUser>((event, emit) async {
      emit(state.copy(status: Status.LOADING));
      final response = await repository.registerUser(event.userRequest);
      print("Success blog : ${response.message}");
      emit(state.copy(status: Status.SUCCESS, userRequest: response));
    });
  }
}
