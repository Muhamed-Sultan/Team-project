import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final String? image;
  final double? width;
  final double? height;
  final Color color;
  final Color? textcolor;
  final TextStyle textStyle;
  final VoidCallback ontap;
  final bool _isDivider;

  const CustomButton({
    super.key,
    required this.text,
    this.image,
    this.width,
    this.height,
    required this.color,
    this.textcolor,
    required this.textStyle,
    required this.ontap,
    this._isDivider = false,
  });

  factory CustomButton.divider({Key? key, String text = 'or continue with'}) {
    return CustomButton._dividerInternal(key: key, text: text);
  }

  const CustomButton._dividerInternal({super.key, required this.text})
    : image = null,
      width = null,
      height = null,
      color = Colors.transparent,
      textcolor = const Color(0xff0D443F),
      textStyle = const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'Manrope',
        color: Color(0xff0D443F),
      ),
      ontap = _emptyFunction,
      _isDivider = true;

  static void _emptyFunction() {}

  @override
  Widget build(BuildContext context) {
    if (_isDivider) {
      return Row(
        children: [
          const Expanded(
            child: Divider(thickness: 1, color: Color(0xffB7C8C5)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(text, style: textStyle),
          ),
          const Expanded(
            child: Divider(thickness: 1, color: Color(0xffB7C8C5)),
          ),
        ],
      );
    }

    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: width ?? double.infinity,
        height: height ?? 55,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(32),
          border: Border.all(color: const Color(0xff0D443F), width: 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (image != null) ...[
              Image.asset(image!, width: 90, height: 100, fit: BoxFit.contain),
              const SizedBox(width: 16),
            ],
            Text(text, style: textStyle.copyWith(color: textcolor)),
          ],
        ),
      ),
    );
  }
}
