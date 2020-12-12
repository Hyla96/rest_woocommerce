import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:rest_woocommerce/stuff/models/woo_commerce_order.dart';

import '../apis/woo_commerce_order_api.dart';
import 'json_to_type_converter.dart';

class ClientManagement {
  ClientManagement({this.secret, this.url, this.key});
  final String key;
  final String secret;
  final String url;

  final Codec<String, String> stringToBase64 = utf8.fuse(base64);

  ChopperClient getClient() => ChopperClient(
        baseUrl: url,
        services: [
          WooCommerceOrderApi.create(),
        ],
        interceptors: [
          HeadersInterceptor({
            'Authorization':
                'Basic ${stringToBase64.encode('${key}:${secret}')}'
          }),
        ],
        converter: JsonToTypeConverter(converters),
        errorConverter: JsonConverter(),
      );

  Map<Type, Function> converters = {
    WooCommerceOrder: (jsonData) => WooCommerceOrder.fromJson(jsonData),
  };
}
