import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_app/core/utlis/styles.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/custom_app_bar.dart';

class TrainerInfoViewBody extends StatelessWidget {
  const TrainerInfoViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const CustomAppBar(
            title: "المدربين",
          ),
          const SizedBox(
            height: 35,
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: -170,
            child: SizedBox(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 35,
                ),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: const BorderSide(color: Colors.black),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: SvgPicture.asset(
                      "assets/images/Group.svg",
                      height: 25,
                    ),
                  ),
                  title: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'محمد عبد الرحمن',
                      style: Styles.styleBoldPurple18,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            right: 0,
            left: 0,
            bottom: -130,
            child: SizedBox(
              height: 122,
              child: CircleAvatar(
                radius: 61,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(
                      'assets/images/trainer.png'), // Replace with the actual image
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Positioned(
            right: 0,
            left: 125,
            bottom: -200,
            child: Text(
              'مدرب أول لياقة بدنية',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Positioned(
            right: 0,
            left: 125,
            bottom: -220,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  "عن المدرب",
                  style: Styles.styleBoldPurple18,
                ),
              ),
            ),
          ),
          const Positioned(
            right: 0,
            left: 10,
            bottom: -300,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                '.مدربك الشخصي للتمرين واللياقة البدنية يتمتع بخبرة تزيد عن 6 سنوات. قم بتحسين لياقتك، وقوتك، وتناسق عضلاتك. ونتبع السعرات الحرارية كجزء من برنامج إنقاص الوزن أو اكتسابه',
                textAlign: TextAlign.center,
                maxLines: 5,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Positioned(
            right: 0,
            left: 10,
            bottom: -320,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  'التعليم',
                  style: Styles.styleBoldPurple18,
                ),
              ),
            ),
          ),
          const Positioned(
            right: 0,
            left: 10,
            bottom: -350,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  '.بكالوريوس تربية رياضية جامعة القاهرة',
                  style: TextStyle(height: 2),
                  maxLines: 4,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Positioned(
            right: 0,
            left: 10,
            bottom: -380,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  'الشهادات التعليمية',
                  style: Styles.styleBoldPurple18,
                ),
              ),
            ),
          ),
          const Positioned(
            right: 0,
            left: 10,
            bottom: -410,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  '.شهادة في التمارين الصالة الرياضية والتدريب الشخصي',
                  style: TextStyle(height: 2),
                  maxLines: 1,
                ),
              ),
            ),
          ),
          const Positioned(
            right: 0,
            left: 10,
            bottom: -440,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  '.شهادة أخرى في التدريب الشخصي',
                  style: TextStyle(height: 2),
                  maxLines: 4,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
