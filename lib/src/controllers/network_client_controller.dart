import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:freelanceproject/src/model/user_model.dart';
import 'package:get_storage/get_storage.dart';

class DioClient {
  final Dio _dio = Dio();
  final _baseUrl = 'https://vyam-bhog-server.herokuapp.com';

  DioClient() {
    _dio.interceptors
      ..add(TokenInterceptor())
      ..add(DioCacheInterceptor(options: options));
  }

  Future<Usermodel> getUser() async {
    Usermodel user = Usermodel();
    try {
      Response userData =
      await _dio.get('$_baseUrl/user/user-details');
      var data = userData.data["data"];
      user = Usermodel.fromJson(data);
    } on DioError catch (e) {
      if (e.response != null) {
        print(e.response);
      } else {
      }
    }
    return user;
  }
  //
  // Future<List<Itemmodel>> fetchAllMenuItems() async {
  //   List<Itemmodel> itemDetails = [];
  //   try {
  //     Response itemDetailsData =
  //     await _dio.get('$_baseUrl/product/fetch-all');
  //     var list = itemDetailsData.data["data"]["products"] as List;
  //     itemDetails = list.map((e) => Itemmodel.fromJson(e)).toList();
  //   } on DioError catch (e) {
  //     if (e.response != null) {
  //       print(e.response);
  //     } else {
  //     }
  //   }
  //   return itemDetails;
  // }
  //
  // Future<List<CartModel>> fetchCart() async {
  //   List<CartModel> cartDetails = [];
  //   try {
  //     Response cartDetailsData =
  //     await _dio.get('$_baseUrl/cart/fetch-all');
  //     var list = cartDetailsData.data["data"]["cart"][0]["products"] as List;
  //     cartDetails = list.map((e) => CartModel.fromJson(e)).toList();
  //   } on DioError catch (e) {
  //     if (e.response != null) {
  //       print(e.response);
  //     } else {
  //     }
  //   }
  //   return cartDetails;
  // }
  //
  // Future<List<CartModel>> addToCart(String productId, int quantity) async {
  //   List<CartModel> cartDetails = [];
  //   String data = jsonEncode({
  //     "productId": productId,
  //     "quantity": quantity
  //   });
  //   try {
  //     Response cartDetailsData =
  //     await _dio.post('$_baseUrl/cart/add-to-cart', data: data);
  //     var list = cartDetailsData.data["products"] as List;
  //     cartDetails = list.map((e) => CartModel.fromJson(e)).toList();
  //   } on DioError catch (e) {
  //     if (e.response != null) {
  //       print(e.response);
  //     } else {
  //
  //     }
  //   }
  //   return cartDetails;
  // }
  //
  // Future<List<CartModel>> deleteFromCart() async {
  //   List<CartModel> cartDetails = [];
  //   try {
  //     Response cartDetailsData =
  //     await _dio.post('$_baseUrl/cart/delete-product');
  //     var list = cartDetailsData.data["products"] as List;
  //     cartDetails = list.map((e) => CartModel.fromJson(e)).toList();
  //   } on DioError catch (e) {
  //     if (e.response != null) {
  //       print(e.response);
  //     } else {
  //
  //     }
  //   }
  //   return cartDetails;
  // }
  //
  // Future<double> fetchTotal() async {
  //   try {
  //     Response totalCartData =
  //     await _dio.post('$_baseUrl/cart/delete-product');
  //     return double.parse(totalCartData.data["data"]["subtotal"] as String);
  //   } on DioError catch (e) {
  //     if (e.response != null) {
  //       print(e.response);
  //     } else {
  //
  //     }
  //   }
  //   return 0;
  // }

  Dio get dio => _dio;
}

class TokenInterceptor extends Interceptor {
  String? authToken = GetStorage().read('authToken');
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers["authorization"] = "Bearer $authToken";
    print(options.headers);
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(
        'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}'
            'DATA => ${response.data}');
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print(
        'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    print(err.response?.data);
    return super.onError(err, handler);
  }
}

// Global options
final options = CacheOptions(
  store: MemCacheStore(),
  policy: CachePolicy.request,
  hitCacheOnErrorExcept: [401, 403],
  maxStale: const Duration(hours: 1),
  priority: CachePriority.high,
);