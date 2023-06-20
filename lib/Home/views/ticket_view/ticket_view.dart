import 'package:booktickets/Home/views/ticket_view/ticket_footer_view.dart';
import 'package:booktickets/Home/views/ticket_view/ticket_header_view.dart';
import 'package:booktickets/Home/views/ticket_view/ticket_middle_view.dart';
import 'package:booktickets/Utils/app_layout.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    final fromCode = ticket['from']['code'];
    final fromName = ticket['from']['name'];
    final toCode = ticket['to']['code'];
    final toName = ticket['to']['name'];
    final flyingTime = ticket['flying_time'];
    final date = ticket['date'];
    final departureTime = ticket['departure_time'];
    final number = ticket['number'];
    return SizedBox(
      width: size.width * 0.85, // Use 85% of the screen width
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /** 
             * Showing the card header view 
            */
            TicketHeaderView(
              fromCode: fromCode,
              fromName: fromName,
              toCode: toCode,
              toName: toName,
              flyingTime: flyingTime,
            ),
            /** 
              * Showing card middle view
            */
            const TicketMiddleView(),
            /**
             * Card footer view
             */
            TicketFooterView(
              date: date,
              dedepartureTime: departureTime,
              number: number,
            ),
          ],
        ),
      ),
    );
  }
}
