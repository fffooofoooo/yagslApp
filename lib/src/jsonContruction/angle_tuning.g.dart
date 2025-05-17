// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'angle_tuning.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AngleTuning _$AngleTuningFromJson(Map<String, dynamic> json) => AngleTuning(
      (json['p'] as num).toDouble(),
      (json['i'] as num).toDouble(),
      (json['d'] as num).toDouble(),
      (json['f'] as num).toDouble(),
      (json['iz'] as num).toDouble(),
    )..fileName = json['fileName'] as String?;

Map<String, dynamic> _$AngleTuningToJson(AngleTuning instance) =>
    <String, dynamic>{
      'p': instance.p,
      'i': instance.i,
      'd': instance.d,
      'f': instance.f,
      'iz': instance.iz,
    };
