import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomGestureDetector extends StatelessWidget {
  const CustomGestureDetector({
    super.key,
    required this.image,
    this.onTap,
  });
  final String image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SvgPicture.asset(image),
    );
  }
}
