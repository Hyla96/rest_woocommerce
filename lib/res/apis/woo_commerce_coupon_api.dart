import 'package:chopper/chopper.dart';
import 'package:rest_woocommerce/res/models/woo_commerce_coupon.dart';

part 'woo_commerce_coupon_api.chopper.dart';

@ChopperApi(baseUrl: '/wp-json/wc/v3/coupons')
abstract class WooCommerceCouponApi extends ChopperService {
  @Get(path: '')
  Future<Response<List<WooCommerceCoupon>>> getAll(
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
  Future<Response<WooCommerceCoupon>> get(@Path() int id);

  @Post(path: '')
  Future<Response<WooCommerceCoupon>> post(@Body() WooCommerceCoupon body);

  @Put(path: '/{id}')
  Future<Response<WooCommerceCoupon>> put(
      @Path() int id, @Body() WooCommerceCoupon body);

  @Delete(path: '/{id}')
  Future<Response> delete(@Path() int id);

  static WooCommerceCouponApi create([ChopperClient client]) {
    return _$WooCommerceCouponApi(client);
  }
}
