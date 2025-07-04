class Validations{
  // Validates if the given email is in a valid format
  static bool isValidEmail(String email) {
    final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    return emailRegex.hasMatch(email);
  }

  // Validates if the given password meets the criteria
  static bool isValidPassword(String password) {
    if(password.length<6 || password.length>20) {
      return false;
    }
    final passRegExp=RegExp(r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[^A-Za-z\d])[A-Za-z\d\W]{8,}$');
    return passRegExp.hasMatch(password);

  }

  // Validates if the given name is not empty
  static bool isValidName(String name) {
    final nameRegex = RegExp(r'^(?:[\p{L}]{2,}\s){2}[\p{L}]{2,}$', unicode: true);
    return nameRegex.hasMatch(name);
  }
}