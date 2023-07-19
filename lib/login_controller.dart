
class LoginController {

  String username = "";
  String password = "";

  bool login() {
    print(username);
    print(password);
    return username == "admin" && password == "admin";
  }

  LoginController._constructor();

  static final LoginController _instance = LoginController._constructor();

  factory LoginController() {
    return _instance;
  }
}