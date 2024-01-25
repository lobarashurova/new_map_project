import 'package:freezed_annotation/freezed_annotation.dart';


part 'map_reuqest.freezed.dart';

part 'map_reuqest.g.dart';

@freezed
class MapRequest with _$MapRequest {
  @JsonSerializable(explicitToJson: true)

  const factory MapRequest(
    String? title,
    String? description,
    double? lot,
    double? lat,
  ) = _MapRequest;

  factory MapRequest.fromJson(Map<String, dynamic> json) =>
      _$MapRequestFromJson(json);
}
