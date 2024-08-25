import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_app/core/utlis/styles.dart';

AppBar buildAppBar({final String? title}) {
  return AppBar(
    leading: Center(
      child: SvgPicture.asset(
        "assets/images/arrow.svg",
        height: 24,
      ),
    ),
    elevation: 0,
    centerTitle: true,
    backgroundColor: Colors.transparent,
    title: Text(
      title ?? '',
      textAlign: TextAlign.center,
      style: Styles.style25,
    ),
  );
}
