// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_limit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentLimit _$CurrentLimitFromJson(Map<String, dynamic> json) => CurrentLimit(
      (json['drive'] as num).toInt(),
      (json['angle'] as num).toInt(),
    );

Map<String, dynamic> _$CurrentLimitToJson(CurrentLimit instance) =>
    <String, dynamic>{
      'drive': instance.drive,
      'angle': instance.angle,
    };
