import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:rest_woocommerce/res/apis/apis.dart';
import 'package:rest_woocommerce/res/models/models.dart';

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
          WooCommerceCouponApi.create(),
          WooCommerceCustomerApi.create(),
          WooCommerceProductApi.create(),
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
    WooCommerceCoupon: (jsonData) => WooCommerceCoupon.fromJson(jsonData),
    WooCommerceCustomer: (jsonData) => WooCommerceCustomer.fromJson(jsonData),
    WooCommerceProduct: (jsonData) => WooCommerceProduct.fromJson(jsonData),
  };
}
