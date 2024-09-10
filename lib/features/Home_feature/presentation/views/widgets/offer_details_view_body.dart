import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/custom_text_bottom.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/offer_item.dart';

class OfferDetailsViewBody extends StatelessWidget {
  const OfferDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 150,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/Rectangle 37.png",
                  // Replace with your image URL
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: SvgPicture.asset("assets/images/Heart.svg"),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text("5.0"),
                    Icon(Icons.star, color: Colors.orange, size: 18),
                    SizedBox(
                      width: 80,
                    ),
                    Text(
                      "        إشتراك شهري + يومين زومبا مجاناً",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 4),
                    Text('4250 جنيه'),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400]!,
                  ),
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "متاح لمده شهر فقط ",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  SvgPicture.asset(
                    "assets/images/clock.svg",
                    height: 18,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                ],
              ),
            ),
          ),
          const Text(
            "استمتع بعالم اللياقه و الانتعاش مع عضويه الجيم الحصرية لديناا\nارتق بروتين تمارينك مع مرافق الجيم لدينا . واسترخ و حقق اهداف\nاللياقه الخاصه بك مع مزيج مثالى من التمارين و الاسترخاء       ",
            maxLines: 4,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                'عروض أخرى',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
            ),
          ),
          const SizedBox(height: 8),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2, // Number of other offers
            itemBuilder: (context, index) {
              return const OfferItem(
                image: "assets/images/Rectangle 37.png",
              );
            },
          ),
          const SizedBox(height: 8),
          const CustomTextButton(
            text: 'اشترك الآن',
          )
        ],
      ),
    );
  }
}
