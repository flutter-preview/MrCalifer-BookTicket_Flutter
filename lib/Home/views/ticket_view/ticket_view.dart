import 'package:booktickets/Home/views/ticket_view/ticket_footer_view.dart';
import 'package:booktickets/Home/views/ticket_view/ticket_header_view.dart';
import 'package:booktickets/Home/views/ticket_view/ticket_middle_view.dart';
import 'package:booktickets/Utils/size_config.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fromCode = ticket['from']['code'];
    final fromName = ticket['from']['name'];
    final toCode = ticket['to']['code'];
    final toName = ticket['to']['name'];
    final flyingTime = ticket['flying_time'];
    final date = ticket['date'];
    final departureTime = ticket['departure_time'];
    final number = ticket['number'];
    return SizedBox(
      width:
          SizeConfig.safeBlockHorizontal! * 85, // Use 85% of the screen width
      // height: SizeConfig.blockSizeVertical! * 30,

      child: Container(
        // decoration: const BoxDecoration(color: Colors.teal),
        margin: EdgeInsets.only(right: SizeConfig.safeBlockHorizontal! * 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
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
              isColor: isColor,
            ),
            /** 
              * Showing card middle view
            */
            TicketMiddleView(
              isColor: isColor,
            ),
            /**
             * Card footer view
             */
            TicketFooterView(
              date: date,
              dedepartureTime: departureTime,
              number: number,
              isColor: isColor,
            ),
          ],
        ),
      ),
    );
  }
}
