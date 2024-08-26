import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExerciseCard extends StatelessWidget {
  const ExerciseCard({super.key, required this.image, required this.title});
  final String image, title;
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
          children: [
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 2,
                  softWrap: true,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 35),
                    const Text(
                      '10 دقائق',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(width: 4),
                    SvgPicture.asset(
                      "assets/images/clock.svg",
                    ),
                    const SizedBox(width: 16),
                    const Text(
                      "|",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(width: 6),
                    const Text(
                      'كالورى  110',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(width: 4),
                    SvgPicture.asset(
                      "assets/images/calories.svg",
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                const Text(
                  '                                          للمبتدئين ',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                image, // Replace with your exercise image asset
                height: 100,
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
