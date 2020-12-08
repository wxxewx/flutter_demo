import 'package:common_utils/common_utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:protobuf/protobuf.dart';
import 'result_body.dart';

typedef ResultProtoBodyTransform<T> = Future<ResultBody<T>> Function(List<int>);

class DioProtoRequest {
  Dio _dio; // 使用默认配置
  String _baseUrl;

  DioProtoRequest(this._baseUrl) {
    _dio = Dio();
    // 配置dio实例
    _dio.options.connectTimeout = 5000; //5s
    _dio.options.receiveTimeout = 3000;
    _dio.options.responseType = ResponseType.bytes;
    _dio.options.baseUrl = _baseUrl;
  }

  Future<ResultBody<T>> get<T>(
      String path, ResultProtoBodyTransform<T> transform,
      {Map parameters}) async {
    try {
      var request = _GetRequest(_dio, path, parameters);
      // var byte = await compute(_get, request, debugLabel: "get-compute");
      var byte = await _get(request);
      var result = await transform(byte);
      LogUtil.e("DioRequest-get-url：${_dio.options.baseUrl + path}");
      LogUtil.e("DioRequest-get-result：$result");
      return result;
    } catch (e) {
      LogUtil.e("DioProtoRequest-get-url：${_dio.options.baseUrl + path}");
      LogUtil.e("DioProtoRequest-get-error：${e.toString()}");
      return ResultBody(false, error: ResultError(e.toString()));
    }
  }

  Future<ResultBody<T>> post<T, P extends GeneratedMessage>(
      String path, P create, ResultProtoBodyTransform<T> transform) async {
    try {
      var request = _PostRequest(_dio, path, create);
      // var byte = await compute(_post, request, debugLabel: "post-compute");
      var byte = await _post(request);

      var result = await transform(byte);
      LogUtil.e("DioProtoRequest-post-url：${_dio.options.baseUrl + path}");
      LogUtil.e("DioProtoRequest-post-result：$result");
      return result;
    } catch (e) {
      LogUtil.e("DioProtoRequest-post-url：${_dio.options.baseUrl + path}");
      LogUtil.e("DioProtoRequest-post-error：${e.toString()}");
      return ResultBody(false, error: ResultError(e.toString()));
    }
  }
}

Future<List<int>> _get<T>(_GetRequest _request) async {
  Response<List<int>> rs = await _request.dio
      .get(_request.path, queryParameters: _request.parameters);
  return rs.data;
}

Future<List<int>> _post<T, P extends GeneratedMessage>(
    _PostRequest _request) async {
  var writeToBuffer = _request.create.writeToBuffer();
  Response<List<int>> rs = await _request.dio.post(_request.path,
      data: Stream.fromIterable(writeToBuffer.map((e) => [e])),
      options: Options(
        headers: {
          Headers.contentLengthHeader: writeToBuffer.length, // 设置content-length
        },
      ));
  return rs.data;
}

class _GetRequest<T> {
  final Dio dio;
  final String path;
  final Map parameters;

  _GetRequest(this.dio, this.path, this.parameters);
}

class _PostRequest<P extends GeneratedMessage> {
  final Dio dio;
  final String path;
  final P create;

  _PostRequest(this.dio, this.path, this.create);
}
