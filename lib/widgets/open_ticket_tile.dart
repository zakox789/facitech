import 'package:facitech/models/ticket_model.dart';
import 'package:facitech/utils/app_color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'status_dot.dart';

class OpenTicketTile extends StatelessWidget {
  final TicketModel ticket;
  final Function() onTap;

  const OpenTicketTile({
    Key? key,
    required this.ticket,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 14.h,
          horizontal: 2.w,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  ticket.ticketNo,
                  style: TextStyle(
                    color: ColorConstants.blackTextColor,
                    fontSize: 18.sp,
                  ),
                ),
                Row(
                  children: [
                    StatusDot(
                      color: ColorConstants.activeColor,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      ticket.status,
                      style: TextStyle(
                        color: ColorConstants.blackTextColor,
                        fontSize: 18.r,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 2.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  ticket.description,
                  style: TextStyle(
                    color: ColorConstants.blackLightTextColor,
                    fontSize: 15.r,
                  ),
                ),
                Text(
                  ticket.date,
                  style: TextStyle(
                    color: ColorConstants.blackLightTextColor,
                    fontSize: 15.r,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
