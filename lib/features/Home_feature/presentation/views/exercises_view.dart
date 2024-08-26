import 'package:flutter/material.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/exercises_view_body.dart';

class ExercisesView extends StatelessWidget {
  const ExercisesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ExercisesViewBody(),
    );
  }
}
