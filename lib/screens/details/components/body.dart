// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/constraint.dart';
import 'package:shop/models/product.dart';
import 'package:shop/screens/details/components/product_title_with_image.dart';
import 'cart_and_counter.dart';
import 'cartwithbuynowbtn.dart';
import 'color_and_size.dart';
import 'counter_with_favbtn.dart';
import 'description.dart';

class DetailsBody extends StatelessWidget {
  final Product product;
  const DetailsBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  // height: 500,
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: ndefaultpadding,
                    right: ndefaultpadding,
                  ),
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorandSize(product: product),
                      Description(product: product),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CartCounter(),
                          Counterwithfavbtn(),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      CartWithBuynowbtn(product: product),
                    ],
                  ),
                ),
                Producttitlewithimage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
