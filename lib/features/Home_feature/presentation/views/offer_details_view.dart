import 'package:flutter/material.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/offer_details_view_body.dart';

class OfferDetailsView extends StatelessWidget {
  const OfferDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: OfferDetailsViewBody(),
      ),
    );
  }
}
