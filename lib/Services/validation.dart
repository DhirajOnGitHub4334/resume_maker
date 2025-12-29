mixin Validation {
  String? pincodeValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Please Enter pincode";
    }

    if (value.length < 6 || value.length > 6) {
      return "Please enter valid pincode";
    }

    return null;
  }

  String? mobileValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Please Enter Mobile Number";
    }

    if (value.length < 10 || value.length > 10) {
      return "Please enter valid mobile number";
    }

    final firstItem = value.substring(0, 1);

    if (firstItem != "9" && firstItem != "8" && firstItem != "7") {
      return "Please enter valid mobile number";
    }

    return null;
  }

  String? emailValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Please Enter email Id";
    }

    final emailRegex = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );

    if (!emailRegex.hasMatch(value)) {
      return "Please enter valid email Id";
    }

    return null;
  }
}
