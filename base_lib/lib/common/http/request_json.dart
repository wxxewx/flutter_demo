import 'package:common_utils/common_utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:protobuf/protobuf.dart';
import 'result_body.dart';

typedef ResultJsonBodyTransform<T> = Future<ResultBody<T>> Function(Map);

class DioJsonRequest {
  Dio _dio; // 使用默认配置
  String _baseUrl;

  DioJsonRequest(this._baseUrl) {
    _dio = Dio();
    // 配置dio实例
    _dio.options.connectTimeout = 5000; //5s
    _dio.options.receiveTimeout = 3000;
    _dio.options.responseType = ResponseType.json;
    _dio.options.baseUrl = _baseUrl;
  }

  Future<ResultBody<T>> get<T>(String path, ResultJsonBodyTransform <T> transform,
      {Map<String,dynamic> parameters}) async {
    try {
      var request = _GetRequest(_dio, path, parameters);
      var data = await compute(_get, request, debugLabel: "get-compute");
      var result = await transform(data);
      LogUtil.e("DioJsonRequest-get-url：${_dio.options.baseUrl + path}");
      LogUtil.e("DioJsonRequest-get-result：${result}");
      return result;
    } catch (e) {
      LogUtil.e("DioJsonRequest-get-url：${_dio.options.baseUrl + path}");
      LogUtil.e("DioJsonRequest-get-error：${e.toString()}");
      return ResultBody(false, error: ResultError(e.toString()));
    }
  }

  Future<ResultBody<T>> post<T, P extends GeneratedMessage>(
      String path, Map<String,dynamic> map, ResultJsonBodyTransform<T> transform) async {
    try {
      var request = _PostRequest(_dio, path, map);
      var data = await compute(_post, request, debugLabel: "post-compute");
      var result = await transform(data);
      LogUtil.e("DioJsonRequest-post-url：${_dio.options.baseUrl + path}");
      LogUtil.e("DioJsonRequest-post-result：$result");
      return result;
    } catch (e) {
      LogUtil.e("DioJsonRequest-post-url：${_dio.options.baseUrl + path}");
      LogUtil.e("DioJsonRequest-post-error：${e.toString()}");
      return ResultBody(false, error: ResultError(e.toString()));
    }
  }
}

Future<Map> _get<T>(_GetRequest _request) async {
  Response rs = await _request.dio
      .get(_request.path, queryParameters: _request.parameters);
  return rs.data;
}

Future<Map> _post<T, P extends GeneratedMessage>(
    _PostRequest _request) async {
  Response rs = await _request.dio.post(_request.path, data: _request.map);
  return rs.data;
}

class _GetRequest<T> {
  final Dio dio;
  final String path;
  final Map<String,dynamic> parameters;

  _GetRequest(this.dio, this.path, this.parameters);
}

class _PostRequest<P extends GeneratedMessage> {
  final Dio dio;
  final String path;
  final Map<String,dynamic> map;

  _PostRequest(this.dio, this.path, this.map);
}
