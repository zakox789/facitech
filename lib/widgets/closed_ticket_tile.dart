import 'package:facitech/models/ticket_model.dart';
import 'package:facitech/utils/app_color_constant.dart';
import 'package:facitech/widgets/rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'status_dot.dart';

class ClosedTicketTile extends StatelessWidget {
  final TicketModel ticket;
  final Function() onTap;

  const ClosedTicketTile({
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
          vertical: 12.h,
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
                      color: ColorConstants.closeColor,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      ticket.status,
                      style: TextStyle(
                        color: ColorConstants.blackTextColor,
                        fontSize: 18.sp,
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
                    fontSize: 15.sp,
                  ),
                ),
                Text(
                  ticket.date,
                  style: TextStyle(
                    color: ColorConstants.blackLightTextColor,
                    fontSize: 15.sp,
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () => _showDialog(context),
                  child: Text(
                    'Rate now',
                    style: TextStyle(
                      color: ColorConstants.blackTextColor,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
                RatingBar(val: ticket.rating),
              ],
            )
          ],
        ),
      ),
    );
  }
}

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        backgroundColor: ColorConstants.whiteTextColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: 16.w,
                left: 24.w,
                top: 20.h,
                bottom: 36.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.close,
                      size: 24.r,
                    ),
                  ),
                  Text(
                    'Rate the Service',
                    style: TextStyle(fontSize: 20.sp),
                  ),
                  SizedBox(height: 20.h),
                  RatingBar(val: 5),
                ],
              ),
            )
          ],
        ),
      );
    },
  );
}
