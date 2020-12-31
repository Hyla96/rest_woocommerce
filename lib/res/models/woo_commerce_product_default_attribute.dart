import 'package:json_annotation/json_annotation.dart';

part 'woo_commerce_product_default_attribute.g.dart';

@JsonSerializable()
class WooCommerceProductDefaultAttribute {
  WooCommerceProductDefaultAttribute({
    this.name,
    this.id,
    this.options,
  });

  factory WooCommerceProductDefaultAttribute.fromJson(
          Map<String, dynamic> json) =>
      _$WooCommerceProductDefaultAttributeFromJson(json);

  Map<String, dynamic> toJson() =>
      _$WooCommerceProductDefaultAttributeToJson(this);

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'options')
  List<String> options;
}
