import 'package:booktickets/Utils/app_layout.dart';
import 'package:booktickets/Utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketFooterView extends StatelessWidget {
  final String date;
  final String dedepartureTime;
  final int number;
  const TicketFooterView(
      {Key? key,
      required this.date,
      required this.dedepartureTime,
      required this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Styles.orangeColor,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(AppLayout.getHeight(21)),
            bottomRight: Radius.circular(AppLayout.getHeight(21))),
      ),
      padding: EdgeInsets.only(
          left: AppLayout.getHeight(16),
          top: AppLayout.getHeight(10),
          right: AppLayout.getHeight(16),
          bottom: AppLayout.getHeight(16)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    date,
                    style: Styles.headLineStyle3.copyWith(color: Colors.white),
                  ),
                  Gap(AppLayout.getHeight(5)),
                  Text(
                    "Date",
                    style: Styles.headLineStyle4.copyWith(color: Colors.white),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    dedepartureTime,
                    style: Styles.headLineStyle3.copyWith(color: Colors.white),
                  ),
                  Gap(AppLayout.getHeight(5)),
                  Text(
                    "Departure Time",
                    style: Styles.headLineStyle4.copyWith(color: Colors.white),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "$number",
                    style: Styles.headLineStyle3.copyWith(color: Colors.white),
                  ),
                  Gap(AppLayout.getHeight(5)),
                  Text(
                    "Number",
                    style: Styles.headLineStyle4.copyWith(color: Colors.white),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
