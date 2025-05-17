// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'angle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Angle _$AngleFromJson(Map<String, dynamic> json) => Angle(
      json['type'] as String,
      (json['id'] as num).toInt(),
      json['canbus'] as String?,
      json['fileName'] as String?,
    );

Map<String, dynamic> _$AngleToJson(Angle instance) => <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'canbus': instance.canbus,
    };
