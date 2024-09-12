import 'package:flutter/material.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/exercies_details_body.dart';

class ExerciesDetailsView extends StatelessWidget {
  const ExerciesDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ExerciesDetailsBody(),
      ),
    );
  }
}
