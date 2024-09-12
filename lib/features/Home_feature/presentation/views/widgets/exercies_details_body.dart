import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/custom_app_bar.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/exercise_info_card.dart';

class ExerciesDetailsBody extends StatelessWidget {
  const ExerciesDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomAppBar(
            title: "تفاصيل التمرين",
          ),
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage(
                "assets/images/Rectangle 37.png", // Replace with your image URL
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Container(
            height: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 50,
                ),
                Text(
                  '10 دقائق',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SvgPicture.asset(
                  "assets/images/clock.svg",
                  height: 15,
                  color: Colors.grey[800],
                ),
                const SizedBox(
                  width: 25,
                ),
                Text(
                  '|',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[800],
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                // const SizedBox(height: 4),
                Text(
                  '110 كالوري',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SvgPicture.asset(
                  "assets/images/calories.svg",
                  height: 15,
                  color: Colors.grey[700],
                ),
                const SizedBox(
                  width: 50,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ExerciseInfoCard(title: 'الهدف', value: 'خسارة '),
              ExerciseInfoCard(title: 'القسم', value: 'كارديو'),
              ExerciseInfoCard(title: 'المستوى', value: 'المبتدئين'),
            ],
          ),
        ),
        const SizedBox(height: 16),
        const Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'كيفية القيام بهذا التمرين',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          "يمكن فى البدايه القيام بالاستلقاء على الارض ثم ثنى القدمين ورفع \nالجسم الأمام حتى تلمس الركبتين الارض مره اخرى و يكرر هذا التريم \nلمده ساعه يوميا وتساعد تمرينات البطن على حرق حوالى          391\n                                                سعره حراريه بمجرد لتباعه يوميا.",
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
          maxLines: 6,
        ),
        const SizedBox(height: 150),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'المواعيد',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Text(
                '3 أسابيع - 20 تمرين',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  //
}
