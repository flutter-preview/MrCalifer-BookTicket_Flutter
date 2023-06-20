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
            const Gap(5),
            Text(
              "Book Tickets",
              style: Styles.headLineStyle1,
            )
          ],
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage("assest/images/img_1.png"))),
        )
      ],
    );
  }
}
