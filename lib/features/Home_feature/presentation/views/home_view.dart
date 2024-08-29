import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_app/features/Home_feature/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeViewBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/Item (1).svg",
                width: 30,
                height: 30,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/Frame (5).svg",
                width: 30,
                height: 30,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/Frame (4).svg",
                width: 30,
                height: 30,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/Item.svg",
                width: 30,
                height: 30,
              ),
              label: ''),
        ],
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: false,
      ),
    );
  }
}
