part of 'map_screen_bloc.dart';

@immutable
abstract class MapScreenEvent {}


class AddLocation extends MapScreenEvent{
  MapRequest mapRequest;

  AddLocation(this.mapRequest);
}