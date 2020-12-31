import 'package:json_annotation/json_annotation.dart';
import 'package:rest_woocommerce/res/models/woo_commerce_object.dart';

part 'woo_commerce_coupon.g.dart';

@JsonSerializable()
class WooCommerceCoupon extends WooCommerceObject {
  WooCommerceCoupon(
      {id,
      dateCreated,
      dateModified,
      this.code,
      this.amount,
      this.dateExpires,
      this.description,
      this.discountType,
      this.emailRestrictions,
      this.excludedProductCategories,
      this.excludedProductIds,
      this.excludeSaleItems,
      this.freeShipping,
      this.individualUse,
      this.limitUsageToXItems,
      this.maximumAmount,
      this.minimumAmount,
      this.productCategories,
      this.productIds,
      this.usageCount,
      this.usageLimit,
      this.usageLimitPerUser,
      this.usedBy})
      : assert(code != null),
        super(id: id, dateCreated: dateCreated, dateModified: dateModified);

  factory WooCommerceCoupon.fromJson(Map<String, dynamic> json) =>
      _$WooCommerceCouponFromJson(json);

  Map<String, dynamic> toJson() => _$WooCommerceCouponToJson(this);

  @JsonKey(name: 'code')
  final String code;

  @JsonKey(name: 'amount')
  String amount;

  @JsonKey(name: 'discount_type')
  String discountType;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'date_expires')
  String dateExpires;

  @JsonKey(name: 'usage_count')
  int usageCount;

  @JsonKey(name: 'individual_use')
  bool individualUse;

  @JsonKey(name: 'product_ids')
  List<int> productIds;

  @JsonKey(name: 'excluded_product_ids')
  List<int> excludedProductIds;

  @JsonKey(name: 'usage_limit')
  int usageLimit;

  @JsonKey(name: 'usage_limit_per_user')
  int usageLimitPerUser;

  @JsonKey(name: 'limit_usage_to_x_items')
  int limitUsageToXItems;

  @JsonKey(name: 'free_shipping')
  bool freeShipping;

  @JsonKey(name: 'product_categories')
  List<int> productCategories;

  @JsonKey(name: 'excluded_product_categories')
  List<int> excludedProductCategories;

  @JsonKey(name: 'exclude_sale_items')
  bool excludeSaleItems;

  @JsonKey(name: 'minimum_amount')
  String minimumAmount;

  @JsonKey(name: 'maximum_amount')
  String maximumAmount;

  @JsonKey(name: 'used_by')
  List<int> usedBy;

  @JsonKey(name: 'email_restrictions')
  List<String> emailRestrictions;
}
