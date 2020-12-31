import 'package:json_annotation/json_annotation.dart';

part 'woo_commerce_product_category.g.dart';

@JsonSerializable()
class WooCommerceProductCategory {
  WooCommerceProductCategory({this.id, this.name, this.slug});

  factory WooCommerceProductCategory.fromJson(Map<String, dynamic> json) =>
      _$WooCommerceProductCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$WooCommerceProductCategoryToJson(this);

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'slug')
  String slug;
}
