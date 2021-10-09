// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';

import '../../../constraint.dart';
class ColorandSize extends StatelessWidget {
  const ColorandSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Color"),
              Row(
                children: const [
                  Colordot(
                    isSelected: true,
                    color: Color(0xFF356C95),
                  ),
                  Colordot(
                    isSelected: false,
                    color: Color(0xFFF8C078),
                  ),
                  Colordot(
                    isSelected: false,
                    color: Color(0xFFA29B9B),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
                style: TextStyle(color: nTextColor),
                children: [
                  TextSpan(text: "size\n"),
                  TextSpan(
                    text: "${product.size} cm",
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  )
                ]),
          ),
        ),
      ],
    );
  }
}

class Colordot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const Colordot({
    Key? key,
    required this.color,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: ndefaultpadding / 4,
        right: ndefaultpadding / 2,
      ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
