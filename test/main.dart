import 'package:flutter_test/flutter_test.dart';
import 'package:rest_woocommerce/res/woo_commerce.dart';
import 'package:rest_woocommerce/rest_woocommerce.dart';

void main() {
  final String key = 'ck_33effd8f1a87991e8431067af22649d8976d8af2';
  final String secret = 'cs_2eba0487ddb218756933fb3a3fcf03a00efa92ec';
  final String url = 'https://www.casabalo.com';

  final WooCommerce commerce =
      WooCommerce(consumerKey: key, consumerSecret: secret, baseUrl: url);
  group('Tests', () {
    test('Orders', () async {
      print('# Testing get all orders endpoint');
      List<WooCommerceOrder> orders = await commerce.getOrders();
      for (WooCommerceOrder order in orders) {
        print('#${order.id}, €${order.total}, created ${order.dateCreated}');
      }
      print('\n');
      expect(orders.length > 0, true);
    });

    test('Coupons', () async {
      print('# Testing get all coupons endpoint');
      List<WooCommerceCoupon> coupons = await commerce.getCoupons();
      for (WooCommerceCoupon coupon in coupons) {
        print(
            '#${coupon.id}, code ${coupon.code}, created ${coupon.dateCreated}');
      }
      print('\n');
      expect(coupons.length > 0, true);
    });

    test('Products', () async {
      print('# Testing get all products endpoint');
      List<WooCommerceProduct> products = await commerce.getProducts();
      for (WooCommerceProduct product in products) {
        print(
            '#${product.id}, ${product.name}, created ${product.dateCreated}');
      }
      print('\n');
      expect(products.length > 0, true);
    });

    test('Customers', () async {
      print('# Testing get all customers endpoint');
      List<WooCommerceCustomer> customers = await commerce.getCustomers();
      for (WooCommerceCustomer customer in customers) {
        print(
            '#${customer.username}, ${customer.email}, created ${customer.role}');
      }
      print('\n');
      expect(customers.length > 0, true);
    });
  });
}
