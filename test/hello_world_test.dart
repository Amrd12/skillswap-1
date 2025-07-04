import 'package:flutter_test/flutter_test.dart';
import 'package:skillswap1/core/validators/all_validations.dart';

void main() {
  test('Email validation', () {
    expect(Validations.isValidEmail('karim@gmail.com'), true);});

}