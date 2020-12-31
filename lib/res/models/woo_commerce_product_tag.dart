import 'package:json_annotation/json_annotation.dart';

part 'woo_commerce_product_tag.g.dart';

@JsonSerializable()
class WooCommerceProductTag {
  WooCommerceProductTag({this.id, this.name, this.slug});

  factory WooCommerceProductTag.fromJson(Map<String, dynamic> json) =>
      _$WooCommerceProductTagFromJson(json);

  Map<String, dynamic> toJson() => _$WooCommerceProductTagToJson(this);

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'slug')
  String slug;
}
