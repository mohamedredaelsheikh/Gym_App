import 'package:flutter/material.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/custom_app_bar.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/custom_tab_button_listview.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/exercise_card.dart';

class ExercisesViewBody extends StatelessWidget {
  const ExercisesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            CustomAppBar(
              title: 'التمارين',
            ),
            SizedBox(height: 10),
            TabButtonListView(paymentMethodItems: [
              'الذراعين',
              'الصدر',
              'القدمين',
              'الظهر',
              'كارديو',
            ]),
            SizedBox(height: 20),
            ExerciseCard(
              image: "assets/images/images-removebg-preview 1.png",
              title:
                  'تمرين لعضلات الجزء العلوي \n                         من الجسم',
            ),
            SizedBox(
              height: 10,
            ),
            ExerciseCard(
              image: "assets/images/images-removebg-preview 1 (1).png",
              title:
                  'تمرين لعضلات الجزء العلوي \n                         من الجسم',
            ),
            SizedBox(
              height: 10,
            ),
            ExerciseCard(
              image: "assets/images/images-removebg-preview 1.png",
              title:
                  'تمرين لعضلات الجزء العلوي \n                         من الجسم',
            ),
            SizedBox(
              height: 10,
            ),
            ExerciseCard(
              image: "assets/images/images-removebg-preview 1 (1).png",
              title:
                  'تمرين لعضلات الجزء العلوي \n                         من الجسم',
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
