import 'package:json_annotation/json_annotation.dart';

import 'enums.dart';
import 'woo_commerce_object.dart';

part 'woo_commerce_order.g.dart';

@JsonSerializable()
class WooCommerceOrder extends WooCommerceObject {
  WooCommerceOrder({
    id,
    dateCreated,
    dateModified,
    this.number,
    this.orderKey,
    this.cartHash,
    this.cartTax,
    this.createdVia,
    this.customerIPAddress,
    this.customerUserAgent,
    this.dateCompleted,
    this.datePaid,
    this.discountTax,
    this.discountTotal,
    this.pricesIncludeTax,
    this.refunds,
    this.shippingTax,
    this.shippingTotal,
    this.taxLines,
    this.total,
    this.totalMax,
    this.currency,
    this.status,
    this.version,
    this.customerId,
    this.customerNote,
    this.parentId,
    this.paymentMethod,
    this.paymentMethodTitle,
    this.transactionId,
  }) : super(id: id, dateCreated: dateCreated, dateModified: dateModified);

  factory WooCommerceOrder.fromJson(Map<String, dynamic> json) =>
      _$WooCommerceOrderFromJson(json);

  Map<String, dynamic> toJson() => _$WooCommerceOrderToJson(this);

  @JsonKey(name: 'number')
  final String number;

  @JsonKey(name: 'order_key')
  final String orderKey;

  @JsonKey(name: 'created_via')
  final String createdVia;

  @JsonKey(name: 'version')
  final String version;

  @JsonKey(name: 'discount_total')
  final String discountTotal;

  @JsonKey(name: 'discount_tax')
  final String discountTax;

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
  WooCommerceOrderStatus status;

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
