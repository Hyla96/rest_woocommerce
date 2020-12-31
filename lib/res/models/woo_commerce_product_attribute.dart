import 'package:json_annotation/json_annotation.dart';

part 'woo_commerce_product_attribute.g.dart';

@JsonSerializable()
class WooCommerceProductAttribute {
  WooCommerceProductAttribute(
      {this.name,
      this.id,
      this.position,
      this.options,
      this.variation,
      this.visible});

  factory WooCommerceProductAttribute.fromJson(Map<String, dynamic> json) =>
      _$WooCommerceProductAttributeFromJson(json);

  Map<String, dynamic> toJson() => _$WooCommerceProductAttributeToJson(this);

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'position')
  int position;

  @JsonKey(name: 'visible')
  bool visible;

  @JsonKey(name: 'variation')
  bool variation;

  @JsonKey(name: 'options')
  List<String> options;
}
