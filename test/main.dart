import 'package:flutter_test/flutter_test.dart';
import 'package:rest_woocommerce/rest_woocommerce.dart';

void main() {
  final String key = 'ck_33effd8f1a87991e8431067af22649d8976d8af2';
  final String secret = 'cs_2eba0487ddb218756933fb3a3fcf03a00efa92ec';
  final String url = 'https://www.casabalo.com';

  test('Counter value should be incremented', () async {
    final WooCommerce commerce =
        WooCommerce(consumerKey: key, consumerSecret: secret, baseUrl: url);
    WooCommerceOrder order = await commerce.getOrder(7563);

    print('First print: ' + order.id.toString());
    expect(double.parse(order.total) > 0, true);
    WooCommerceOrder order2 = order..customerNote = 'OK';
    print('Second print: ' + order2.id.toString());
    final order3 = await commerce.createOrder(order);
    print('Third print: ' + order3.id.toString());
    final order4 = await commerce.updateOrder(order3..customerNote = 'MEH');
    print('Forth print: ' + order4.id.toString());
    final bool k = await commerce.deleteOrder(order4.id);
    print('Fifth print: ' + k.toString());
  });
}
