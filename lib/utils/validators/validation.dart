class CustomValidator {
  static String? emailValidator(String? value) {
    if (value!.isEmpty) {
      return 'Email is required';
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }
  static String? passwordValidator(String?
  value) {
    if (value!.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }
  static String? nameValidator(String? value) {
    if (value!.isEmpty) {
      return 'Name is required';
    }
    if (value.length < 3) {
      return 'Name must be at least 3 characters long';
    }
    return null;
  }
  static String? phoneValidator(String? value) {
    if (value!.isEmpty) {
      return 'Phone number is required';
    }
    if (value.length != 10) {
      return 'Phone number must be 10 digits long';
    }
    return null;
  }
  static String? addressValidator(String? value) {
    if (value!.isEmpty) {
      return 'Address is required';
    }
    if (value.length < 10) {
      return 'Address must be at least 10 characters long';
    }
    return null;
  }
  static String? pincodeValidator(String? value) {
    if (value!.isEmpty) {
      return 'Pincode is required';
    }
    if (value.length != 6) {
      return 'Pincode must be 6 digits long';
    }
    return null;
  }
  static String? otpValidator(String? value) {
    if (value!.isEmpty) {
      return 'OTP is required';
    }
    if (value.length != 6) {
      return 'OTP must be 6 digits long';
    }
    return null;
  }
  static String? confirmPasswordValidator(String? value, String? password) {
    if (value!.isEmpty) {
      return 'Confirm Password is required';
    }
    if (value != password) {
      return 'Password and Confirm Password must be same';
    }
    return null;
  }
  static String? requiredValidator(String? value) {
    if (value!.isEmpty) {
      return 'This field is required';
    }
    return null;
  }
  static String? numberValidator(String? value) {
    if (value!.isEmpty) {
      return 'This field is required';
    }
    if (int.tryParse(value) == null) {
      return 'Please enter a valid number';
    }
    return null;
  }
  static String? priceValidator(String? value) {
    if (value!.isEmpty) {
      return 'Price is required';
    }
    if (double.tryParse(value) == null) {
      return 'Please enter a valid price';
    }
    return null;
  }
  static String? quantityValidator(String? value) {
    if (value!.isEmpty) {
      return 'Quantity is required';
    }
    if (int.tryParse(value) == null) {
      return 'Please enter a valid quantity';
    }
    return null;
  }
  static String? discountValidator(String? value) {
    if (value!.isEmpty) {
      return 'Discount is required';
    }
    if (double.tryParse(value) == null) {
      return 'Please enter a valid discount';
    }
    return null;
  }
  static String? taxValidator(String? value) {
    if (value!.isEmpty) {
      return 'Tax is required';
    }
    if (double.tryParse(value) == null) {
      return 'Please enter a valid tax';
    }
    return null;
  }
  static String? shippingValidator(String? value) {
    if (value!.isEmpty) {
      return 'Shipping is required';
    }
    if (double.tryParse(value) == null) {
      return 'Please enter a valid shipping';
    }
    return null;
  }
  static String? locationValidator(String? value) {
    if (value!.isEmpty) {
      return 'Location is required';
    }
    return null;
  }
  static String? categoryValidator(String? value) {
    if (value!.isEmpty) {
      return 'Category is required';
    }
    return null;
  }
  static String? descriptionValidator(String? value) {
    if (value!.isEmpty) {
      return 'Description is required';
    }
    if (value.length < 10) {
      return 'Description must be at least 10 characters long';
    }
    return null;
  }

  static String? imageValidator(String? value) {
    if (value!.isEmpty) {
      return 'Image is required';
    }
    return null;
  }
  static String? urlValidator(String? value) {
    if (value!.isEmpty) {
      return 'URL is required';
    }
    if (!RegExp(r'^http(s)?://').hasMatch(value)) {
      return 'Please enter a valid URL';
    }
    return null;
  }
  static String? dateValidator(String? value) {
    if (value!.isEmpty) {
      return 'Date is required';
    }
    return null;
  }
  static String? timeValidator(String? value) {
    if (value!.isEmpty) {
      return 'Time is required';
    }
    return null;
  }
  static String? colorValidator(String? value) {
    if (value!.isEmpty) {
      return 'Color is required';
    }
    return null;
  }
  static String? hexColorValidator(String? value) {
    if (value!.isEmpty) {
      return 'Hex Color is required';
    }
    if (!RegExp(r'^#?([0-9A-Fa-f]{3}){1,2}$').hasMatch(value)) {
      return 'Please enter a valid Hex Color';
    }
    return null;
  }
  static String? lengthValidator(String? value, int length) {
    if (value!.isEmpty) {
      return 'This field is required';
    }
    if (value.length < length) {
      return 'This field must be at least $length characters long';
    }
    return null;
  }
  static String? maxLengthValidator(String? value, int length) {
    if (value!.isEmpty) {
      return 'This field is required';
    }
    if (value.length > length) {
      return 'This field must be at most $length characters long';
    }
    return null;
  }
  
}