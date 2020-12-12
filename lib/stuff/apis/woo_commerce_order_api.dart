import 'package:chopper/chopper.dart';

import '../models/woo_commerce_order.dart';

part 'woo_commerce_order_api.chopper.dart';

@ChopperApi(baseUrl: '/wp-json/wc/v3/orders')
abstract class WooCommerceOrderApi extends ChopperService {
  @Get(path: '')
  Future<Response<List<WooCommerceOrder>>> getAll();

  @Get(path: '/{id}')
  Future<Response<WooCommerceOrder>> get(@Path() int id);

  @Post(path: '/{id}')
  Future<Response<WooCommerceOrder>> post(
      @Path() int id, @Body() WooCommerceOrder body);

  @Put(path: '/{id}')
  Future<Response<WooCommerceOrder>> put(
      @Path() int id, @Body() WooCommerceOrder body);

  @Delete(path: '/{id}')
  Future<Response> delete(@Path() int id);

  static WooCommerceOrderApi create([ChopperClient client]) {
    return _$WooCommerceOrderApi(client);
  }
}
