import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop/models/product.dart';

import '../../../constraint.dart';

class CartWithBuynowbtn extends StatelessWidget {
  const CartWithBuynowbtn({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: ndefaultpadding),
          child: Container(
            margin: EdgeInsets.only(
              right: 15,
            ),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: product.color,
              ),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                "assets/svg/cart.svg",
                color: product.color,
                fit: BoxFit.fill,
              ),
              onPressed: () {},
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 50,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              color: product.color,
              onPressed: () {},
              child: Text(
                "Buy Now".toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
