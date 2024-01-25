import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:new_map_project/data/model/source/remote/request/map/map_reuqest.dart';
import 'package:new_map_project/data/model/source/remote/response/map/MapResponse.dart';
import 'package:new_map_project/di/app_di.dart';
import 'package:new_map_project/domain/AppRepository.dart';

import '../../../../data/enum/Status.dart';

part 'map_screen_event.dart';

part 'map_screen_state.dart';

class MapScreenBloc extends Bloc<MapScreenEvent, MapScreenState> {
  MapScreenBloc() : super(MapScreenState()) {
    final repository = getIt<AppRepository>();
    on<AddLocation>((event, emit) async {
      emit(state.copy(status: Status.LOADING));
      final respone = await repository.addLocation(event.mapRequest);
      print("repsonse=${respone.description}");
      emit(state.copy(status: Status.SUCCESS, mapResponse: respone));
    });
  }
}
