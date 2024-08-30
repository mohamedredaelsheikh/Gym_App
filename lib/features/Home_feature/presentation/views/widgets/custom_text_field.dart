import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.onchange,
    required this.hinttext,
    this.obscure = false,
  });

  final bool? obscure;
  final String? hinttext;
  Function(String)? onchange;
  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.end,
      obscureText: obscure!,
      onChanged: onchange,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Opacity(
            opacity: .5,
            child: SvgPicture.asset(
              "assets/images/search 01.svg",
            ),
          ),
        ),
        hintText: hinttext,
        hintStyle: const TextStyle(color: Colors.grey),
        enabledBorder: buildOutineBorder(),
        focusedBorder: buildOutineBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
