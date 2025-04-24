import 'package:flutter/material.dart';
import 'package:responsive_final_design/utils/app_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});

  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppStyle.styleRegular16.copyWith(
          color: const Color(0xffAAAAAA),
        ),
        fillColor: const Color(0xfffafafa),
        filled: true,
        border: borderTheme(),
        enabledBorder: borderTheme(),
        focusedBorder: borderTheme(),
      ),
    );
  }

  OutlineInputBorder borderTheme() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: Color(0xfffafafa)),
    );
  }
}
