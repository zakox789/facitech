import 'package:facitech/dialogs/rating_dialog.dart';
import 'package:facitech/models/ticket_model.dart';
import 'package:facitech/utils/constants.dart';
import 'package:facitech/widgets/rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:facitech/utils/extensions.dart';

import 'status_dot.dart';

class TicketTile extends StatelessWidget {
  final TicketModel ticket;
  final Function() onTap;
  final Function(double)? onRating;

  const TicketTile({
    Key? key,
    required this.ticket,
    required this.onTap,
    this.onRating,
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
                  'Ticket No. ${ticket.ticketNo}',
                  style: TextStyle(
                    color: ColorConstants.blackTextColor,
                    fontSize: 18.sp,
                  ),
                ),
                Row(
                  children: [
                    StatusDot(status: ticket.status),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      ticket.status.caps,
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
            if (ticket.status == 'closed') ...[
              SizedBox(height: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (ticket.rating == 0) ...[
                    InkWell(
                      onTap: () async {
                        final _rating = await showRatingDialog(context);
                        if (_rating != null) {
                          print('KKK: $_rating');
                          onRating!(_rating);
                        }
                      },
                      child: Text(
                        'Rate now',
                        style: TextStyle(
                          color: ColorConstants.blackTextColor,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.w),
                  ],
                  StaticRatingBar(val: ticket.rating),
                ],
              ),
            ]
          ],
        ),
      ),
    );
  }
}
