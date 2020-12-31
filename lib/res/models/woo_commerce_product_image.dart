import 'package:json_annotation/json_annotation.dart';
import 'package:rest_woocommerce/res/models/woo_commerce_object.dart';

part 'woo_commerce_product_image.g.dart';

@JsonSerializable()
class WooCommerceProductImage extends WooCommerceObject {
  WooCommerceProductImage(
      {id, dateCreated, dateModified, this.name, this.src, this.alt})
      : super(id: id, dateModified: dateModified, dateCreated: dateCreated);

  factory WooCommerceProductImage.fromJson(Map<String, dynamic> json) =>
      _$WooCommerceProductImageFromJson(json);

  Map<String, dynamic> toJson() => _$WooCommerceProductImageToJson(this);

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'src')
  String src;

  @JsonKey(name: 'alt')
  String alt;
}
