import 'package:json_annotation/json_annotation.dart';

import 'woo_commerce_object.dart';

part 'woo_commerce_customer.g.dart';

@JsonSerializable()
class WooCommerceCustomer extends WooCommerceObject {
  WooCommerceCustomer({id, dateCreated, dateModified, this.name})
      : super(id: id, dateModified: dateModified, dateCreated: dateCreated);

  factory WooCommerceCustomer.fromJson(Map<String, dynamic> json) =>
      _$WooCommerceCustomerFromJson(json);

  Map<String, dynamic> toJson() => _$WooCommerceCustomerToJson(this);

  @JsonKey(name: 'name')
  String name;
}
