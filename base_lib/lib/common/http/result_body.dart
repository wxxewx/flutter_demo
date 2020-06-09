class ResultBody<T> {
  final T data;
  final bool isSuccess;
  final ResultError error;

  const ResultBody(this.isSuccess, {this.data, this.error});

  @override
  String toString() {
    return 'ResultBody{data: $data, isSuccess: $isSuccess, error: $error}';
  }
}

class ResultError {
  final String msg;
  final int code;

  const ResultError(this.msg, {code}) : this.code = code ?? -1;

  @override
  String toString() {
    return 'Error{msg: $msg}';
  }
}
