import 'package:flutter/material.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/offer_view_body.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: OfferViewBody(),
      ),
    );
  }
}
