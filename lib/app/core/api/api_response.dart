class ApiResponse<T> {
  bool? responseSucess;
  String? msg;
  T? result;

  ApiResponse.ok(this.result) {
    responseSucess = true;
  }
  ApiResponse.error(this.msg) {
    responseSucess = false;
  }
}
