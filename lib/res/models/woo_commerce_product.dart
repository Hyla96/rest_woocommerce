import 'package:json_annotation/json_annotation.dart';

import 'enums.dart';
import 'woo_commerce_object.dart';

part 'woo_commerce_product.g.dart';

@JsonSerializable()
class WooCommerceProduct extends WooCommerceObject {
  WooCommerceProduct(
      {id,
      dateCreated,
      dateModified,
      this.cartHash,
      this.cartTax,
      this.customerIPAddress,
      this.featured,
      this.permalink,
      this.customerUserAgent,
      this.dateCompleted,
      this.datePaid,
      this.pricesIncludeTax,
      this.refunds,
      this.shippingTax,
      this.shippingTotal,
      this.taxLines,
      this.total,
      this.totalMax,
      this.currency,
      this.status,
      this.customerId,
      this.customerNote,
      this.parentId,
      this.paymentMethod,
      this.paymentMethodTitle,
      this.transactionId})
      : super(id: id, dateModified: dateModified, dateCreated: dateCreated);

  factory WooCommerceProduct.fromJson(Map<String, dynamic> json) =>
      _$WooCommerceProductFromJson(json);

  Map<String, dynamic> toJson() => _$WooCommerceProductToJson(this);

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'slug')
  String slug;

  @JsonKey(name: 'permalink')
  final String permalink;

  @JsonKey(name: 'type')
  WooCommerceProductType type;

  @JsonKey(name: 'featured')
  final bool featured;

  @JsonKey(name: 'shipping_total')
  final String shippingTotal;

  @JsonKey(name: 'shipping_tax')
  final String shippingTax;

  @JsonKey(name: 'cart_tax')
  final String cartTax;

  @JsonKey(name: 'total')
  final String total;

  @JsonKey(name: 'total_tax')
  final String totalMax;

  @JsonKey(name: 'prices_include_tax')
  final bool pricesIncludeTax;

  @JsonKey(name: 'customer_ip_address')
  final String customerIPAddress;

  @JsonKey(name: 'customer_user_agent')
  final String customerUserAgent;

  @JsonKey(name: 'date_paid')
  final DateTime datePaid;

  @JsonKey(name: 'date_completed')
  final DateTime dateCompleted;

  @JsonKey(name: 'cart_hash')
  final String cartHash;

  @JsonKey(name: 'tax_lines')
  final List<String> taxLines;

  @JsonKey(name: 'refunds')
  final List<String> refunds;

  @JsonKey(name: 'status')
  WooCommerceProductStatus status;

  @JsonKey(name: 'currency')
  WooCommerceCurrency currency;

  @JsonKey(name: 'parent_id')
  int parentId;

  @JsonKey(name: 'customer_id')
  int customerId;

  @JsonKey(name: 'customer_note')
  String customerNote;

  @JsonKey(name: 'payment_method')
  final String paymentMethod;

  @JsonKey(name: 'payment_method_title')
  final String paymentMethodTitle;

  @JsonKey(name: 'transaction_id')
  final String transactionId;
}
