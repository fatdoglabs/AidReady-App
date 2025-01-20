mixin ValidationMixin {
  bool validateEmail(String email) {
    final RegExp emailRegex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.com$');
    return emailRegex.hasMatch(email);
  }

  bool validatePassword(String password) {
    if (password.length > 7) {
      return true;
    } else {
      return false;
    }
  }

  bool validateNotEmpty(String value) {
    if (value.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  bool validatePin(String value) {
    if (value.length == 4) {
      return true;
    } else {
      return false;
    }
  }

  bool validateNotNull<T>(T value) {
    if (value != null) {
      return true;
    } else {
      return false;
    }
  }
}
