// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Imu _$ImuFromJson(Map<String, dynamic> json) => Imu(
      json['type'] as String,
      (json['id'] as num).toInt(),
      json['canbus'] as String?,
    );

Map<String, dynamic> _$ImuToJson(Imu instance) => <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'canbus': instance.canbus,
    };
