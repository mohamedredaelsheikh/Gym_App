import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/custom_app_bar.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/custom_tab_button_listview.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/offer_card.dart';

class OfferViewBody extends StatelessWidget {
  const OfferViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(
          title: "العروض",
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            SizedBox(
              width: 350,
              child: TabButtonListView(paymentMethodItems: [
                'الاكثر شيوعا',
                'خصومات تصل ل %50',
                'الكل',
              ]),
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: Colors.purple,
                size: 20,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        OfferCard(
          image: "assets/images/Rectangle 37.png",
        ),
        SizedBox(
          height: 25,
        ),
        OfferCard(
          image: "assets/images/Rectangle 37.png",
        ),
      ],
    );
  }
}
