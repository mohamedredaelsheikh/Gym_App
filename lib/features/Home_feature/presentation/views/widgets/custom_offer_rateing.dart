import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomOfferRating extends StatelessWidget {
  const CustomOfferRating({
    super.key,
    required this.title,
    required this.rate,
  });
  final String title;
  final String rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            SvgPicture.asset("assets/images/Heart.svg"),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Text(rate),
                const SizedBox(width: 4),
                const Icon(Icons.star, color: Colors.orange, size: 18),
              ],
            ),
          ],
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 4),
            const Text('850 جنيه'),
          ],
        ),
      ],
    );
  }
}
