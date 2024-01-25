part of 'map_screen_bloc.dart';

class MapScreenState {
  MapResponse? mapResponse;
  Status? status;

  MapScreenState({this.mapResponse, this.status});

  MapScreenState copy({MapResponse? mapResponse, Status? status}) {
    return MapScreenState(
        mapResponse: mapResponse ?? this.mapResponse,
        status: status ?? this.status);
  }
}
