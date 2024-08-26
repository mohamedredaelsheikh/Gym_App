import 'package:flutter/material.dart';

import 'package:gym_app/features/Home_feature/presentation/views/widgets/custom_offer_rateing.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.asset(
              image,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: CustomOfferRating(
              title: "إشتراك شهري + يومين زومبا مجاناً",
              rate: "5.0",
            ),
          ),
        ],
      ),
    );
  }
}
