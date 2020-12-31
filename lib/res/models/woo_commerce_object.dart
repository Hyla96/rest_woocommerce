import 'package:json_annotation/json_annotation.dart';

part 'woo_commerce_object.g.dart';

@JsonSerializable()
class WooCommerceObject {
  WooCommerceObject({this.id, dateModified, dateCreated})
      : this.dateCreated = DateTime.parse(dateCreated),
        this.dateModified = DateTime.parse(dateModified);

  factory WooCommerceObject.fromJson(Map<String, dynamic> json) =>
      _$WooCommerceObjectFromJson(json);

  Map<String, dynamic> toJson() => _$WooCommerceObjectToJson(this);

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'date_created')
  final DateTime dateCreated;

  @JsonKey(name: 'date_modified')
  final DateTime dateModified;
}
