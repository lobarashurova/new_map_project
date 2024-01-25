// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_reuqest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MapRequest _$MapRequestFromJson(Map<String, dynamic> json) {
  return _MapRequest.fromJson(json);
}

/// @nodoc
mixin _$MapRequest {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get lot => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapRequestCopyWith<MapRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapRequestCopyWith<$Res> {
  factory $MapRequestCopyWith(
          MapRequest value, $Res Function(MapRequest) then) =
      _$MapRequestCopyWithImpl<$Res, MapRequest>;
  @useResult
  $Res call({String? title, String? description, double? lot, double? lat});
}

/// @nodoc
class _$MapRequestCopyWithImpl<$Res, $Val extends MapRequest>
    implements $MapRequestCopyWith<$Res> {
  _$MapRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? lot = freezed,
    Object? lat = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      lot: freezed == lot
          ? _value.lot
          : lot // ignore: cast_nullable_to_non_nullable
              as double?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapRequestImplCopyWith<$Res>
    implements $MapRequestCopyWith<$Res> {
  factory _$$MapRequestImplCopyWith(
          _$MapRequestImpl value, $Res Function(_$MapRequestImpl) then) =
      __$$MapRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? description, double? lot, double? lat});
}

/// @nodoc
class __$$MapRequestImplCopyWithImpl<$Res>
    extends _$MapRequestCopyWithImpl<$Res, _$MapRequestImpl>
    implements _$$MapRequestImplCopyWith<$Res> {
  __$$MapRequestImplCopyWithImpl(
      _$MapRequestImpl _value, $Res Function(_$MapRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? lot = freezed,
    Object? lat = freezed,
  }) {
    return _then(_$MapRequestImpl(
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == lot
          ? _value.lot
          : lot // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MapRequestImpl implements _MapRequest {
  const _$MapRequestImpl(this.title, this.description, this.lot, this.lat);

  factory _$MapRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapRequestImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final double? lot;
  @override
  final double? lat;

  @override
  String toString() {
    return 'MapRequest(title: $title, description: $description, lot: $lot, lat: $lat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapRequestImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.lot, lot) || other.lot == lot) &&
            (identical(other.lat, lat) || other.lat == lat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, lot, lat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapRequestImplCopyWith<_$MapRequestImpl> get copyWith =>
      __$$MapRequestImplCopyWithImpl<_$MapRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapRequestImplToJson(
      this,
    );
  }
}

abstract class _MapRequest implements MapRequest {
  const factory _MapRequest(final String? title, final String? description,
      final double? lot, final double? lat) = _$MapRequestImpl;

  factory _MapRequest.fromJson(Map<String, dynamic> json) =
      _$MapRequestImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  double? get lot;
  @override
  double? get lat;
  @override
  @JsonKey(ignore: true)
  _$$MapRequestImplCopyWith<_$MapRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
