import 'package:chopper/chopper.dart';

import '../models/order/woo_commerce_order.dart';

part 'woo_commerce_order_api.chopper.dart';

@ChopperApi(baseUrl: '/wp-json/wc/v3/orders')
abstract class WooCommerceOrderApi extends ChopperService {
  @Get(path: '')
  Future<Response<List<WooCommerceOrder>>> getAll(
      {@Query() int page,
      @Query() int perPage,
      @Query() String search,
      @Query() String after,
      @Query() String before,
      @Query() List<int> exclude,
      @Query() List<int> include,
      @Query() int offset,
      @Query() List<int> parent,
      @Query() List<int> parentExclude,
      @Query() String orderBy,
      @Query() String status,
      @Query() int customer,
      @Query() int product});

  @Get(path: '/{id}')
  Future<Response<WooCommerceOrder>> get(@Path() int id);

  @Post(path: '')
  Future<Response<WooCommerceOrder>> post(@Body() WooCommerceOrder body);

  @Put(path: '/{id}')
  Future<Response<WooCommerceOrder>> put(
      @Path() int id, @Body() WooCommerceOrder body);

  @Delete(path: '/{id}')
  Future<Response> delete(@Path() int id);

  static WooCommerceOrderApi create([ChopperClient client]) {
    return _$WooCommerceOrderApi(client);
  }
}
