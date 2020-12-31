import 'package:chopper/chopper.dart';
import 'package:rest_woocommerce/res/models/woo_commerce_customer.dart';

part 'woo_commerce_customer_api.chopper.dart';

@ChopperApi(baseUrl: '/wp-json/wc/v3/customers')
abstract class WooCommerceCustomerApi extends ChopperService {
  @Get(path: '')
  Future<Response<List<WooCommerceCustomer>>> getAll(
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
  Future<Response<WooCommerceCustomer>> get(@Path() int id);

  @Post(path: '')
  Future<Response<WooCommerceCustomer>> post(@Body() WooCommerceCustomer body);

  @Put(path: '/{id}')
  Future<Response<WooCommerceCustomer>> put(
      @Path() int id, @Body() WooCommerceCustomer body);

  @Delete(path: '/{id}')
  Future<Response> delete(@Path() int id);

  static WooCommerceCustomerApi create([ChopperClient client]) {
    return _$WooCommerceCustomerApi(client);
  }
}
