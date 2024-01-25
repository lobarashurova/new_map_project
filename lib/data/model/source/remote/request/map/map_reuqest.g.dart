// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_reuqest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MapRequestImpl _$$MapRequestImplFromJson(Map<String, dynamic> json) =>
    _$MapRequestImpl(
      json['title'] as String?,
      json['description'] as String?,
      (json['lot'] as num?)?.toDouble(),
      (json['lat'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$MapRequestImplToJson(_$MapRequestImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'lot': instance.lot,
      'lat': instance.lat,
    };
