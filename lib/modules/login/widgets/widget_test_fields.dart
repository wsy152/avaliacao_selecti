import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WidgetTextField extends StatelessWidget {
  final bool enabled;
  final String label;
  final String hint;
  final String validatorText;
  final bool password;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  FocusNode? focusNode;

  WidgetTextField({
    required this.enabled,
    required this.label,
    required this.hint,
    required this.validatorText,
    this.password = false,
    this.controller,
    this.validator,
    this.keyboardType,
    this.textInputAction,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      keyboardType: keyboardType,
      controller: controller,
      obscureText: password,
      validator: validator,
      textInputAction: textInputAction,
      focusNode: focusNode,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
      ),
    );
  }
}
