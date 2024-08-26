import 'package:flutter/material.dart';

import 'package:gym_app/core/utlis/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          title ?? '',
          textAlign: TextAlign.center,
          style: Styles.style25.copyWith(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          icon: const Icon(Icons.arrow_forward, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
