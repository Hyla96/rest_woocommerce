import 'package:chopper/chopper.dart';
import 'package:rest_woocommerce/res/utils/api_client.dart';

import 'apis/apis.dart';
import 'models/models.dart';

class WooCommerce {
  WooCommerce({this.consumerSecret, this.consumerKey, this.baseUrl})
      : assert(consumerSecret != null && consumerSecret.isNotEmpty,
            'No consumer secret passed as parameter'),
        assert(consumerKey != null && consumerKey.isNotEmpty,
            'No consumer secret passed as parameter'),
        assert(baseUrl != null && baseUrl.isNotEmpty,
            'No base url passed as parameter'),
        _client = ClientManagement(
                secret: consumerSecret, key: consumerKey, url: baseUrl)
            .getClient();

  final ChopperClient _client;
  final String consumerKey;
  final String consumerSecret;
  final String baseUrl;

  Future<List<WooCommerceOrder>> getOrders() async {
    final _service = _client.getService<WooCommerceOrderApi>();
    final _orders = (await _service.getAll()).body;
    return _orders;
  }

  Future<WooCommerceOrder> getOrder(int id) async {
    final _service = _client.getService<WooCommerceOrderApi>();
    final _order = (await _service.get(id)).body;
    return _order;
  }

  Future<bool> deleteOrder(int id) async {
    final _service = _client.getService<WooCommerceOrderApi>();
    final _order = await _service.delete(id);
    return _order.isSuccessful;
  }

  Future<WooCommerceOrder> updateOrder(WooCommerceOrder order) async {
    final _service = _client.getService<WooCommerceOrderApi>();
    final _order = (await _service.put(order.id, order)).body;
    return _order;
  }

  Future<WooCommerceOrder> createOrder(WooCommerceOrder order) async {
    final _service = _client.getService<WooCommerceOrderApi>();
    final response = await _service.post(order);
    print(response.isSuccessful);
    print(response.error);
    print(response.statusCode);
    final _order = response.body;
    return _order;
  }
}
