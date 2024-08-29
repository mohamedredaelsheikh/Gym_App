import 'package:flutter/material.dart';

import 'package:gym_app/core/utlis/styles.dart';
import 'package:gym_app/features/Home_feature/presentation/views/exercises_view.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/custom_button.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/custom_tab_button_listview.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/method_item.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/offer_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                const MethodItem(
                  width: 35,
                  height: 30,
                  image: "assets/images/Frame.svg",
                ),
                const SizedBox(
                  width: 5,
                ),
                const MethodItem(
                  width: 35,
                  height: 30,
                  image: "assets/images/notification 01.svg",
                ),
                const SizedBox(
                  width: 175,
                ),
                Column(
                  children: [
                    Text(
                      "مرحبا",
                      style: Styles.style18.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "محمدأحمد",
                      style: Styles.style20.copyWith(
                        color: const Color(0xff30059D),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(
                "assets/images/slider.png",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    onTap: () {},
                    label: 'العروض',
                    image: "assets/images/Frame (4).svg",
                  ),
                  CustomButton(
                    onTap: () {},
                    label: 'المدربين',
                    image: "assets/images/Frame (3).svg",
                  ),
                  CustomButton(
                    onTap: () {},
                    label: 'الإشتراكات',
                    image: "assets/images/Frame (2).svg",
                  ),
                  CustomButton(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const ExercisesView();
                          },
                        ),
                      );
                    },
                    label: 'التمارين',
                    image: "assets/images/Frame (1).svg",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'عرض المزيد',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'مايميزنا',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const TabButtonListView(paymentMethodItems: [
              'التمارين',
              'المدربين',
              'الإشتراكات',
              'العروض',
            ]),
            const SizedBox(height: 20),
            const OfferCard(
              image: "assets/images/Rectangle 37.png",
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
