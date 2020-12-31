import 'package:json_annotation/json_annotation.dart';

part 'woo_commerce_order_billing.g.dart';

@JsonSerializable()
class WooCommerceOrderBilling {
  WooCommerceOrderBilling(
      {this.firstName,
      this.lastName,
      this.country,
      this.state,
      this.email,
      this.city,
      this.phone,
      this.address1,
      this.address2,
      this.company,
      this.postcode});

  factory WooCommerceOrderBilling.fromJson(Map<String, dynamic> json) =>
      _$WooCommerceOrderBillingFromJson(json);

  Map<String, dynamic> toJson() => _$WooCommerceOrderBillingToJson(this);

  @JsonKey(name: 'first_name')
  String firstName;

  @JsonKey(name: 'last_name')
  String lastName;

  @JsonKey(name: 'company')
  String company;

  @JsonKey(name: 'address_1')
  String address1;

  @JsonKey(name: 'address_2')
  String address2;

  @JsonKey(name: 'city')
  String city;

  @JsonKey(name: 'state')
  String state;

  @JsonKey(name: 'postcode')
  String postcode;

  @JsonKey(name: 'country')
  String country;

  @JsonKey(name: 'email')
  String email;

  @JsonKey(name: 'phone')
  String phone;
}
