import 'package:flutter/material.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/trainer_info_view_body.dart';

class TrainerInfoView extends StatelessWidget {
  const TrainerInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: TrainerInfoViewBody(),
      ),
    );
  }
}
