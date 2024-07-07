class Login {
  int? code;
  bool? status;
  String? token;
  String? userID;
  String? userEmail;

  Login({this.code, this.status, this.token, this.userID, this.userEmail});

  factory Login.fromJson(Map<String, dynamic> obj) {
    int? parseCode(dynamic value) {
      if (value is int) {
        return value;
      } else if (value is String) {
        return int.tryParse(value);
      }
      return null;
    }

    return Login(
        code: parseCode(obj['code']),
        status: obj['status'] as bool?,
        token: obj['data']['token'] as String?,
        userID: obj['data']['user']['id'] as String?,
        userEmail: obj['data']['user']['email'] as String?);
  }
}
