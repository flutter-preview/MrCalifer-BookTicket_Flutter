import 'package:booktickets/Utils/app_layout.dart';
import 'package:booktickets/Utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Good Morning", style: Styles.headLineStyle3),
            Gap(AppLayout.getHeight(5)),
            Text(
              "Book Tickets",
              style: Styles.headLineStyle1,
            )
          ],
        ),
        Container(
          width: AppLayout.getWidth(50),
          height: AppLayout.getHeight(50),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
              image: const DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage("assest/images/img_1.png"))),
        )
      ],
    );
  }
}
