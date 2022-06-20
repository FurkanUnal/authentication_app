import '../Entity/user.dart';
import '../Presenter/presenter.dart';

class LoginUser {
  User admin = User(username: "admin", password: "123");

  bool isAuthenticated() {
    if (Presenter.username.value.text == admin.username &&
        Presenter.password.value.text == admin.password) {
      return true;
    }
    return false;
  }
}
