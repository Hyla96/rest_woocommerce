import 'package:chopper/chopper.dart';
import 'package:rest_woocommerce/res/models/woo_commerce_product.dart';

part 'woo_commerce_product_api.chopper.dart';

@ChopperApi(baseUrl: '/wp-json/wc/v3/products')
abstract class WooCommerceProductApi extends ChopperService {
  @Get(path: '')
  Future<Response<List<WooCommerceProduct>>> getAll(
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
      @Query() String order,
      @Query() String orderBy,
      @Query() String status,
      @Query() String code});

  @Get(path: '/{id}')
  Future<Response<WooCommerceProduct>> get(@Path() int id);

  @Post(path: '')
  Future<Response<WooCommerceProduct>> post(@Body() WooCommerceProduct body);

  @Put(path: '/{id}')
  Future<Response<WooCommerceProduct>> put(
      @Path() int id, @Body() WooCommerceProduct body);

  @Delete(path: '/{id}')
  Future<Response> delete(@Path() int id);

  static WooCommerceProductApi create([ChopperClient client]) {
    return _$WooCommerceProductApi(client);
  }
}
