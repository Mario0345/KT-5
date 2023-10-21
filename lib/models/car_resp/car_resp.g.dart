// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarRespImpl _$$CarRespImplFromJson(Map<String, dynamic> json) =>
    _$CarRespImpl(
      cars: (json['cars'] as List<dynamic>)
          .map((e) => Cars.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CarRespImplToJson(_$CarRespImpl instance) =>
    <String, dynamic>{
      'cars': instance.cars,
    };
