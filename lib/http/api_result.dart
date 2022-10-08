class ApiResult<T> {
  Status status;
  T? data;
  Exception? exception;

  ApiResult.success(this.data) : status = Status.SUCCESS;

  ApiResult.error(this.exception) : status = Status.ERROR;
}

enum Status { SUCCESS, ERROR }
