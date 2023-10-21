import 'package:freezed_annotation/freezed_annotation.dart';

part 'cars.freezed.dart';
part 'cars.g.dart';

class PriceConverter implements JsonConverter<double, String>{
  const PriceConverter();
  @override
  double fromJson(String json){
    return double.parse(json.replaceAll("\$", ''));
  }
  @override
  String toJson(double object){
    throw UnimplementedError();
  }

}

@freezed
class Cars with _$Cars {
  const Cars._();
  factory Cars({
    required int id,
    @JsonKey(name: 'car' ) required String brand,
    @JsonKey(name: 'car_model' ) required String brand_model,
    @JsonKey(name: 'car_color' ) required String car_color,
    @PriceConverter() required double price,
    required bool availability,
  }) = _Cars;

  factory Cars.fromJson(Map<String, dynamic> json) => _$CarsFromJson(json);
}