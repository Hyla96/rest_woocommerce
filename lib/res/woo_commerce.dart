import 'package:chopper/chopper.dart';
import 'package:rest_woocommerce/res/utils/api_client.dart';

import 'apis/apis.dart';
import 'models/models.dart';

class WooCommerce {
  WooCommerce({this.consumerSecret, this.consumerKey, this.baseUrl}) {
    ChopperClient _client =
        ClientManagement(secret: consumerSecret, key: consumerKey, url: baseUrl)
            .getClient();
    _orderService = _client.getService<WooCommerceOrderApi>();
    _couponService = _client.getService<WooCommerceCouponApi>();
    _productService = _client.getService<WooCommerceProductApi>();
    _customerService = _client.getService<WooCommerceCustomerApi>();
  }

  /// Woo Commerce authentication data
  final String consumerKey;
  final String consumerSecret;
  final String baseUrl;

  /// Services
  WooCommerceOrderApi _orderService;
  WooCommerceCouponApi _couponService;
  WooCommerceProductApi _productService;
  WooCommerceCustomerApi _customerService;

  /// Order service
  Future<List<WooCommerceOrder>> getOrders(
          {int page = 1,
          int perPage = 10,
          String search,
          DateTime after,
          DateTime before,
          List<int> exclude,
          List<int> include,
          int offset,
          List<int> parent,
          List<int> parentExclude,
          OrderByOption orderBy = OrderByOption.date,
          OrderStatus status = OrderStatus.any,
          int customer,
          int product}) async =>
      (await _orderService.getAll(
              page: page,
              perPage: perPage,
              search: search,
              after: after != null ? after.toIso8601String() : null,
              before: before != null ? before.toIso8601String() : null,
              exclude: exclude,
              include: include,
              offset: offset,
              parent: parent,
              parentExclude: parentExclude,
              orderBy: orderBy.toShortString(),
              status: status.toShortString(),
              customer: customer,
              product: product))
          .body;

  Future<WooCommerceOrder> getOrder(int id) async =>
      (await _orderService.get(id)).body;

  Future<bool> deleteOrder(int id) async =>
      (await _orderService.delete(id)).isSuccessful;

  Future<WooCommerceOrder> updateOrder(WooCommerceOrder order) async =>
      (await _orderService.put(order.id, order)).body;

  Future<WooCommerceOrder> createOrder(WooCommerceOrder order) async =>
      (await _orderService.post(order)).body;

  /// Coupon service
  Future<List<WooCommerceCoupon>> getCoupons(
          {int page = 1,
          int perPage = 10,
          String search,
          DateTime after,
          DateTime before,
          List<int> exclude,
          List<int> include,
          int offset,
          List<int> parent,
          List<int> parentExclude,
          OrderByOption orderBy = OrderByOption.date,
          OrderStatus status = OrderStatus.any,
          OrderOption order = OrderOption.asc,
          String code}) async =>
      (await _couponService.getAll(
        page: page,
        perPage: perPage,
        search: search,
        after: after != null ? after.toIso8601String() : null,
        before: before != null ? before.toIso8601String() : null,
        exclude: exclude,
        include: include,
        offset: offset,
        parent: parent,
        parentExclude: parentExclude,
        orderBy: orderBy.toShortString(),
        status: status.toShortString(),
        order: order.toShortString(),
        code: code,
      ))
          .body;

  /// Product service
  Future<List<WooCommerceProduct>> getProducts(
          {int page = 1,
          int perPage = 10,
          String search,
          DateTime after,
          DateTime before,
          List<int> exclude,
          List<int> include,
          int offset,
          List<int> parent,
          List<int> parentExclude,
          OrderByOption orderBy = OrderByOption.date,
          OrderStatus status = OrderStatus.any,
          OrderOption order = OrderOption.asc,
          String code}) async =>
      (await _productService.getAll(
        page: page,
        perPage: perPage,
        search: search,
        after: after != null ? after.toIso8601String() : null,
        before: before != null ? before.toIso8601String() : null,
        exclude: exclude,
        include: include,
        offset: offset,
        parent: parent,
        parentExclude: parentExclude,
        orderBy: orderBy.toShortString(),
        status: status.toShortString(),
        order: order.toShortString(),
        code: code,
      ))
          .body;

  /// Product service
  Future<List<WooCommerceCustomer>> getCustomers(
          {int page = 1,
          int perPage = 10,
          String search,
          DateTime after,
          DateTime before,
          List<int> exclude,
          List<int> include,
          int offset,
          List<int> parent,
          List<int> parentExclude,
          OrderByOption orderBy = OrderByOption.date,
          OrderStatus status = OrderStatus.any,
          OrderOption order = OrderOption.asc,
          String code}) async =>
      (await _customerService.getAll(
        page: page,
        perPage: perPage,
        search: search,
        after: after != null ? after.toIso8601String() : null,
        before: before != null ? before.toIso8601String() : null,
        exclude: exclude,
        include: include,
        offset: offset,
        parent: parent,
        parentExclude: parentExclude,
        orderBy: orderBy.toShortString(),
        status: status.toShortString(),
        order: order.toShortString(),
        code: code,
      ))
          .body;
}

enum OrderByOption { date, id, include, title, slug }
enum OrderOption { asc, desc }

enum OrderStatus {
  any,
  pending,
  processing,
  on_hold,
  completed,
  cancelled,
  refunded,
  failed,
  trash
}

extension ParseOrderByOptionToString on OrderByOption {
  String toShortString() {
    return this.toString().split('.').last;
  }
}

extension ParseOrderOptionToString on OrderOption {
  String toShortString() {
    return this.toString().split('.').last;
  }
}

extension ParseStatusToString on OrderStatus {
  String toShortString() {
    return this.toString().split('.').last;
  }
}
