
import 'package:app/modules/home/login/widgets/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    required this.icon,
    required this.text,
    required this.controller,
    required this.validator,
    this.keyboardType,
    this.isPassword,
    super.key,
  });

  final TextInputType? keyboardType;
  final bool? isPassword;
  final TextEditingController controller;
  final String Function(String?) validator;
  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) => validator(value),
      obscureText: isPassword ?? false,
      keyboardType: keyboardType ?? TextInputType.text,

      //
      style: const TextStyle(
        fontSize: 16,
        letterSpacing: 0,
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,

      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Colors.white.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: formFieldErrorColor),
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: icon,
        prefixIconColor: Colors.white.withOpacity(0.7),
        label: Text(text),
        labelStyle: TextStyle(
          color: Colors.white,
          fontSize: 16,
          letterSpacing: 0,
        ),
        fillColor: Colors.black.withOpacity(0.2),
        filled: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
          
        ),
      ),
      textInputAction: TextInputAction.next,
    );
  }
}
