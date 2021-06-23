import 'package:facitech/models/ticket_model.dart';
import 'package:facitech/utils/app_color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'status_dot.dart';

class OpenTicketTile extends StatelessWidget {
  final TicketModel ticket;

  const OpenTicketTile({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 14.h,
        horizontal: 2.w,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                ticket.ticketNo,
                style: TextStyle(
                  color: ColorConstants.blackTextColor,
                  fontSize: 18,
                ),
              ),
              Spacer(),
              StatusDot(
                color: ColorConstants.activeColor,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                ticket.status,
                style: TextStyle(
                  color: ColorConstants.blackTextColor,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          Row(
            children: [
              Text(
                ticket.description,
                style: TextStyle(
                  color: ColorConstants.blackLightTextColor,
                  fontSize: 18,
                ),
              ),
              Spacer(),
              SizedBox(
                width: 8,
              ),
              Text(
                ticket.date,
                style: TextStyle(
                  color: ColorConstants.blackLightTextColor,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
