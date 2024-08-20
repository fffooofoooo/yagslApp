// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ramp_rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RampRate _$RampRateFromJson(Map<String, dynamic> json) => RampRate(
      (json['drive'] as num).toDouble(),
      (json['angle'] as num).toDouble(),
    );

Map<String, dynamic> _$RampRateToJson(RampRate instance) => <String, dynamic>{
      'drive': instance.drive,
      'angle': instance.angle,
    };
