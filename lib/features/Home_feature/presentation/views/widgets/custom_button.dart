import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.label, required this.image, this.onTap});
  final String label;
  final String image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 90,
          width: 80,
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            shadows: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  blurRadius: 45,
                  spreadRadius: 0,
                  offset: const Offset(0, 40))
            ],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: const BorderSide(
                color: Color.fromARGB(255, 132, 102, 197),
              ),
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 31,
                child: SvgPicture.asset(
                  image,
                  color: const Color.fromARGB(255, 132, 102, 197),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff31049E),
                ),
              ),
            ],
          )),
    );
  }
}
