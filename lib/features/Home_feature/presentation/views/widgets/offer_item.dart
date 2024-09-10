import 'package:flutter/material.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/custom_offer_rateing.dart';

class OfferItem extends StatelessWidget {
  const OfferItem({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomOfferRating(
              title: "إشتراك شهري + يومين زومبا مجاناً",
              rate: "5.0",
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                image, // Replace with your exercise image asset
                height: 120,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
