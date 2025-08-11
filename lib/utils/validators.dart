class Validators {
  static final RegExp _emailReg = RegExp(
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@"
    r"[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?"
    r"(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$",
  );

  // Password: min 8, at least 1 upper, 1 lower, 1 digit, 1 symbol
  static final RegExp _passwordReg = RegExp(
    r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^A-Za-z0-9]).{8,}$',
  );

  static bool isValidEmail(String email) => _emailReg.hasMatch(email.trim());

  static bool isValidPassword(String pwd) => _passwordReg.hasMatch(pwd);
}