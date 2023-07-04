import 'package:booktickets/Utils/app_styles.dart';
import 'package:booktickets/Utils/size_config.dart';
import 'package:booktickets/widgets/layout_builder.dart';
import 'package:flutter/material.dart';

class TicketMiddleView extends StatelessWidget {
  final bool? isColor;
  const TicketMiddleView({Key? key, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /**Showing ticket view middle segment */
    return Container(
      color: isColor == null ? Styles.orangeColor : Colors.white,
      child: Row(
        children: [
          SizedBox(
            height: SizeConfig.safeBlockVertical! * 2,
            width: SizeConfig.safeBlockHorizontal! * 2,
            child: DecoratedBox(
                decoration: BoxDecoration(
                    color: isColor == null
                        ? const Color(0xFFeeedf2)
                        : Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight:
                            Radius.circular(SizeConfig.safeBlockVertical! * 5),
                        bottomRight: Radius.circular(
                            SizeConfig.safeBlockVertical! * 5)))),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(SizeConfig.safeBlockVertical! * 1.5),
            child: LayoutBuilderWidget(isColor: isColor , sections: 15,),
          )),
          SizedBox(
            height: SizeConfig.safeBlockVertical! * 2,
            width: SizeConfig.safeBlockHorizontal! * 2,
            child: DecoratedBox(
                decoration: BoxDecoration(
                    color: isColor == null
                        ? const Color(0xFFeeedf2)
                        : Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft:
                            Radius.circular(SizeConfig.safeBlockVertical! * 5),
                        bottomLeft: Radius.circular(
                            SizeConfig.safeBlockVertical! * 5)))),
          ),
        ],
      ),
    );
  }
}
