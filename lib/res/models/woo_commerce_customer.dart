import 'package:json_annotation/json_annotation.dart';
import 'package:rest_woocommerce/res/models/woo_commerce_billing.dart';
import 'package:rest_woocommerce/res/models/woo_commerce_shipping.dart';

part 'woo_commerce_customer.g.dart';

@JsonSerializable()
class WooCommerceCustomer {
  WooCommerceCustomer(
      {id,
      dateCreated,
      dateModified,
      this.email,
      this.lastName,
      this.firstName,
      this.username,
      this.password,
      this.avatarUrl,
      this.billing,
      this.isPayingCustomer,
      this.role,
      this.shipping})
      : assert(email != null);

  factory WooCommerceCustomer.fromJson(Map<String, dynamic> json) =>
      _$WooCommerceCustomerFromJson(json);

  Map<String, dynamic> toJson() => _$WooCommerceCustomerToJson(this);

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'first_name')
  String firstName;

  @JsonKey(name: 'last_name')
  String lastName;

  @JsonKey(name: 'role')
  final String role;

  @JsonKey(name: 'username')
  String username;

  @JsonKey(name: 'password')
  String password;

  @JsonKey(name: 'billing')
  WooCommerceBilling billing;

  @JsonKey(name: 'shipping')
  WooCommerceShipping shipping;

  @JsonKey(name: 'is_paying_customer')
  final bool isPayingCustomer;

  @JsonKey(name: 'avatar_url')
  final String avatarUrl;
}
