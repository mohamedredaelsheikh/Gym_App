import 'package:flutter/material.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/trainer_view_body.dart';

class TrainersView extends StatelessWidget {
  const TrainersView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: TrainersViewBody(),
      ),
    );
  }
}
