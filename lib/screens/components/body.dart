import 'package:flutter/material.dart';
import 'package:welcome_page/screens/components/discountcard.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          DiscountCard(),

        ],
    ),
    );
  }
}
