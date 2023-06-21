import 'package:booktickets/Utils/app_layout.dart';
import 'package:booktickets/widgets/view_all.dart';
import 'package:flutter/material.dart';

class DiscountOffersViews extends StatelessWidget {
  const DiscountOffersViews({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.90,
      child: const ViewAllSection(
          bigText: "Discounts & Offers", smallText: "View all"),
    );
  }
}
