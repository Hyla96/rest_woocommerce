import 'package:json_annotation/json_annotation.dart';
import 'package:rest_woocommerce/res/models/woo_commerce_dimension.dart';
import 'package:rest_woocommerce/res/models/woo_commerce_product_attribute.dart';
import 'package:rest_woocommerce/res/models/woo_commerce_product_category.dart';
import 'package:rest_woocommerce/res/models/woo_commerce_product_default_attribute.dart';
import 'package:rest_woocommerce/res/models/woo_commerce_product_image.dart';
import 'package:rest_woocommerce/res/models/woo_commerce_product_tag.dart';

import 'enums.dart';
import 'woo_commerce_object.dart';

part 'woo_commerce_product.g.dart';

@JsonSerializable()
class WooCommerceProduct extends WooCommerceObject {
  WooCommerceProduct(
      {id,
      dateCreated,
      dateModified,
      this.featured,
      this.permalink,
      this.description,
      this.name,
      this.variations,
      this.upsellIds,
      this.tags,
      this.shippingTaxable,
      this.shippingRequired,
      this.shippingClassId,
      this.shippingClass,
      this.reviewsAllowed,
      this.relatedIds,
      this.ratingCount,
      this.purchaseNote,
      this.menuOrder,
      this.images,
      this.groupedProducts,
      this.dimensions,
      this.defaultAttributes,
      this.crossSellIds,
      this.categories,
      this.averageRating,
      this.attributes,
      this.parentId,
      this.weight,
      this.virtual,
      this.type,
      this.totalSales,
      this.status,
      this.price,
      this.backordered,
      this.backorders,
      this.backordersAllowed,
      this.buttonText,
      this.catalogVisibility,
      this.dateOnSaleFrom,
      this.dateOnSaleTo,
      this.downloadable,
      this.downloadExpiry,
      this.downloadLimit,
      this.downloads,
      this.externalUrl,
      this.manageStock,
      this.onSale,
      this.priceHtml,
      this.purchasable,
      this.regularPrice,
      this.salePrice,
      this.shortDescription,
      this.sku,
      this.slug,
      this.soldIndividually,
      this.stockQuantity,
      this.stockStatus,
      this.taxClass,
      this.taxStatus})
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

  @JsonKey(name: 'status')
  WooCommerceProductStatus status;

  @JsonKey(name: 'featured')
  final bool featured;

  @JsonKey(name: 'catalog_visibility')
  WooCommerceCatalogVisibility catalogVisibility;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'short_description')
  String shortDescription;

  @JsonKey(name: 'sku')
  String sku;

  @JsonKey(name: 'price')
  final String price;

  @JsonKey(name: 'regular_price')
  String regularPrice;

  @JsonKey(name: 'sale_price')
  String salePrice;

  @JsonKey(name: 'date_on_sale_from')
  DateTime dateOnSaleFrom;

  @JsonKey(name: 'date_on_sale_to')
  DateTime dateOnSaleTo;

  @JsonKey(name: 'price_html')
  String priceHtml;

  @JsonKey(name: 'on_sale')
  bool onSale;

  @JsonKey(name: 'purchasable')
  bool purchasable;

  @JsonKey(name: 'total_sales')
  int totalSales;

  @JsonKey(name: 'virtual')
  bool virtual;

  @JsonKey(name: 'downloadable')
  bool downloadable;

  @JsonKey(name: 'downloads	')
  List<String> downloads;

  @JsonKey(name: 'download_limit')
  int downloadLimit;

  @JsonKey(name: 'download_expiry')
  int downloadExpiry;

  @JsonKey(name: 'external_url')
  String externalUrl;

  @JsonKey(name: 'button_text')
  String buttonText;

  @JsonKey(name: 'tax_status')
  String taxStatus;

  @JsonKey(name: 'tax_class')
  String taxClass;

  @JsonKey(name: 'manage_stock')
  bool manageStock;

  @JsonKey(name: 'stock_quantity')
  int stockQuantity;

  @JsonKey(name: 'stock_status')
  String stockStatus;

  @JsonKey(name: 'backorders')
  String backorders;

  @JsonKey(name: 'backorders_allowed')
  bool backordersAllowed;

  @JsonKey(name: 'backordered')
  bool backordered;

  @JsonKey(name: 'sold_individually')
  bool soldIndividually;

  @JsonKey(name: 'weight')
  String weight;

  @JsonKey(name: 'dimensions')
  WooCommerceDimension dimensions;

  @JsonKey(name: 'shipping_required')
  bool shippingRequired;

  @JsonKey(name: 'shipping_taxable')
  bool shippingTaxable;

  @JsonKey(name: 'shipping_class')
  String shippingClass;

  @JsonKey(name: 'shipping_class_id')
  int shippingClassId;

  @JsonKey(name: 'reviews_allowed')
  bool reviewsAllowed;

  @JsonKey(name: 'average_rating')
  String averageRating;

  @JsonKey(name: 'rating_count')
  int ratingCount;

  @JsonKey(name: 'related_ids')
  List<int> relatedIds;

  @JsonKey(name: 'upsell_ids')
  List<int> upsellIds;

  @JsonKey(name: 'cross_sell_ids')
  List<int> crossSellIds;

  @JsonKey(name: 'parent_id')
  int parentId;

  @JsonKey(name: 'purchase_note')
  String purchaseNote;

  @JsonKey(name: 'categories')
  List<WooCommerceProductCategory> categories;

  @JsonKey(name: 'tags')
  List<WooCommerceProductTag> tags;

  @JsonKey(name: 'images')
  List<WooCommerceProductImage> images;

  @JsonKey(name: 'attributes')
  List<WooCommerceProductAttribute> attributes;

  @JsonKey(name: 'default_attributes')
  List<WooCommerceProductDefaultAttribute> defaultAttributes;

  @JsonKey(name: 'variations')
  List<int> variations;

  @JsonKey(name: 'grouped_products')
  List<int> groupedProducts;

  @JsonKey(name: 'menu_order')
  int menuOrder;
}
