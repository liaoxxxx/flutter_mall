import 'package:dio/dio.dart';
import 'package:mall/constant/app_strings.dart';
import 'package:mall/router/application.dart';
import 'package:mall/router/routers.dart';
import 'package:mall/utils/shared_preferences_util.dart';
import 'package:mall/utils/toast_util.dart';

class HttpUtil {
  // 工厂模式
  static HttpUtil get instance => _getInstance();
  static HttpUtil _httpUtil;
  var dio;

  static HttpUtil _getInstance() {
    if (_httpUtil == null) {
      _httpUtil = HttpUtil();
    }
    return _httpUtil;
  }

  HttpUtil() {
    BaseOptions options = BaseOptions(
      connectTimeout: 5000,
      receiveTimeout: 5000,
    );
    dio = new Dio(options);
    dio.interceptors.add(InterceptorsWrapper(onRequest: (RequestOptions options, handle) async {
      print("========================请求数据 onRequest===================");
      print("url=${options.uri.toString()}");
      print("params=${options.data}");
      dio.lock();
      //如果token存在在请求头加上token

      await SharedPreferencesUtil.getInstance()
          .getString(AppStrings.TOKEN)
          .then((token) {
        options.headers[AppStrings.TOKEN] = token;
        print("token==$token");
      });
      dio.unlock();
      print("dio.unlock");
      return handle.next(options);
    }, onResponse: (response, handler) {
      /*print("========================请求数据 onResponse===================");
        print("code=${response.statusCode}");
        print("response=${response.data}");
        if (response.data[AppStrings.ERR_NO] == 501) {
          Application.navigatorKey.currentState.pushNamed(Routers.login);
          dio.reject("");
        }
        return response;*/
      return handler.next(response); // continue
    }, onError: (DioError error, handler) {
     /* print("========================请求错误===================");
      print("message =${error.message}");
      return error;*/
          return  handler.next(error);//continue
    }));
  }

  //get请求
  Future get(String url,
      {Map<String, dynamic> parameters, Options options}) async {
    Response response;
    if (parameters != null && options != null) {
      response =
          await dio.get(url, queryParameters: parameters, options: options);
    } else if (parameters != null && options == null) {
      response = await dio.get(url, queryParameters: parameters);
    } else if (parameters == null && options != null) {
      response = await dio.get(url, options: options);
    } else {
      response = await dio.get(url);
    }
    return response.data;
  }

  //post请求
  Future post(String url,
      {Map<String, dynamic> parameters, Options options}) async {
    Response response;
    var parametersFormData= FormData.fromMap(parameters);
    if (parameters != null && options != null) {
      response = await dio.post(url, data: parametersFormData, options: options);
    } else if (parameters != null && options == null) {
      response = await dio.post(url, data: parametersFormData);
    } else if (parametersFormData == null && options != null) {
      response = await dio.post(url, options: options);
    } else {
      response = await dio.post(url);
    }
    return response.data;
  }
}
