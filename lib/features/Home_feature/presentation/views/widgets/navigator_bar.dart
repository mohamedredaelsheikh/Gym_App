import 'package:flutter/material.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/custom_gesture_detector.dart';

class NavigatorBar extends StatelessWidget {
  const NavigatorBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomGestureDetector(
            onTap: () {},
            image: "assets/images/Item (1).svg",
          ),
          CustomGestureDetector(
            onTap: () {},
            image: "assets/images/Frame (5).svg",
          ),
          const SizedBox(
            width: 10,
          ),
          CustomGestureDetector(
            onTap: () {},
            image: "assets/images/Frame (4).svg",
          ),
          CustomGestureDetector(
            onTap: () {},
            image: "assets/images/Item.svg",
          ),
        ],
      ),
    );
  }
}
