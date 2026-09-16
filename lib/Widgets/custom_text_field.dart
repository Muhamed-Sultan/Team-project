import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final Color labelColor;
  final double fontSize;
  final FontWeight fontWeight;
  final FormFieldValidator<String>? validator;
  final bool isOutline;
  final Function(String)? onChanged;
  final VoidCallback onToggleVisibility;
  final ValueChanged<bool?>? onAgreementChanged;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final bool showTerms;
  final Widget? suffixIcon;
  final bool obscureText;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.onToggleVisibility,
    this.showTerms = true,
    this.onAgreementChanged,
    required this.label,
    required this.labelColor,
    required this.fontSize,
    this.validator,
    required this.fontWeight,
    required this.isOutline,
    this.onChanged,
    this.suffixIcon,
    required this.hintText,
    this.prefixIcon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      obscureText: obscureText,
      onTapOutside: (value) {
        FocusScope.of(context).unfocus();
      },
      validator: validator,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        labelStyle: TextStyle(
          color: labelColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon != null
            ? GestureDetector(onTap: onToggleVisibility, child: suffixIcon)
            : null,
        filled: true,
        fillColor: const Color(0xfff4f4f4),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xff858585)),
        ),
      ),
    );
  }
}
