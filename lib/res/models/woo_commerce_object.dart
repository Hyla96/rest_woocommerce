import 'package:json_annotation/json_annotation.dart';

part 'woo_commerce_object.g.dart';

@JsonSerializable()
class WooCommerceObject {
  WooCommerceObject(
      {this.id,
      this.dateModifiedGMT,
      this.dateModified,
      this.dateCreatedGMT,
      this.dateCreated});

  factory WooCommerceObject.fromJson(Map<String, dynamic> json) =>
      _$WooCommerceObjectFromJson(json);

  Map<String, dynamic> toJson() => _$WooCommerceObjectToJson(this);

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'date_created')
  final DateTime dateCreated;

  @JsonKey(name: 'date_created_gmt')
  final DateTime dateCreatedGMT;

  @JsonKey(name: 'date_modified')
  final DateTime dateModified;

  @JsonKey(name: 'date_modified_gmt')
  final DateTime dateModifiedGMT;
}
