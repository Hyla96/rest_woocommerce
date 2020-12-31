import 'package:json_annotation/json_annotation.dart';

part 'woo_commerce_dimension.g.dart';

@JsonSerializable()
class WooCommerceDimension {
  WooCommerceDimension({this.length, this.height, this.width});

  factory WooCommerceDimension.fromJson(Map<String, dynamic> json) =>
      _$WooCommerceDimensionFromJson(json);

  Map<String, dynamic> toJson() => _$WooCommerceDimensionToJson(this);

  @JsonKey(name: 'length')
  String length;

  @JsonKey(name: 'width')
  String width;

  @JsonKey(name: 'height')
  String height;
}
