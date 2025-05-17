// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drive_tuning.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriveTuning _$DriveTuningFromJson(Map<String, dynamic> json) => DriveTuning(
      (json['p'] as num).toDouble(),
      (json['i'] as num).toDouble(),
      (json['d'] as num).toDouble(),
      (json['f'] as num).toDouble(),
      (json['iz'] as num).toDouble(),
    )..fileName = json['fileName'] as String?;

Map<String, dynamic> _$DriveTuningToJson(DriveTuning instance) =>
    <String, dynamic>{
      'p': instance.p,
      'i': instance.i,
      'd': instance.d,
      'f': instance.f,
      'iz': instance.iz,
    };
