import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class Counterwithfavbtn extends StatelessWidget {
  const Counterwithfavbtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        color: Color(0xFFFF6464),
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(
        "assets/svg/heart.svg",
      ),
    );
  }
}
