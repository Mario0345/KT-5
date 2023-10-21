import 'package:freezed_annotation/freezed_annotation.dart';
import '../cars/cars.dart';

part 'car_resp.freezed.dart';
part 'car_resp.g.dart';

@freezed
class CarResp with _$CarResp {

  factory CarResp({
    required List<Cars> cars,
  }) = _CarResp;

  factory CarResp.fromJson(Map<String, dynamic> json) => _$CarRespFromJson(json);
}