import 'package:booktickets/Home/views/ticket_view/ticket_footer_view.dart';
import 'package:booktickets/Home/views/ticket_view/ticket_header_view.dart';
import 'package:booktickets/Home/views/ticket_view/ticket_middle_view.dart';
import 'package:booktickets/Utils/app_layout.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85, // Use 85% of the screen width 
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /** 
             * Showing the card header view 
            */
            TicketHeaderView(),
            /** 
              * Showing card middle view
            */
            TicketMiddleView(),
            /**
             * Card footer view
             */
            TicketFooterView(),
          ],
        ),
      ),
    );
  }
}
