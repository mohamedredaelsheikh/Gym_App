import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/trainer_info.dart';

class TrainerCard extends StatelessWidget {
  const TrainerCard({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.red[50],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: 0,
          right: 7,
          bottom: -10,
          child: CircleAvatar(
            backgroundColor: Colors.grey[100],
            child: SvgPicture.asset(
              "assets/images/Group.svg",
            ),
          ),
        ),
        const Positioned(
          left: 0,
          right: 7,
          bottom: -60,
          child: TrainerInfo(
            name: 'محمد عبد الرحمن',
            role: 'مدرب أول',
          ),
        ),
      ],
    );
  }
}
