import 'package:flutter/material.dart';
import 'package:gym_app/features/Home_feature/presentation/views/trainer_info_view.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/custom_app_bar.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/custom_text_field.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/trainer_card.dart';

class TrainersViewBody extends StatelessWidget {
  const TrainersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomAppBar(
            title: "المدربين",
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            hinttext: "بحث",
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 25,
                mainAxisSpacing: 75,
                childAspectRatio: 0.8,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const TrainerInfoView();
                        },
                      ),
                    );
                  },
                  child: const TrainerCard(
                    image:
                        'assets/images/trainer.png', // Replace with actual image paths
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
