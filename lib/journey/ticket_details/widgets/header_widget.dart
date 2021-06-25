import 'package:facitech/dialogs/rating_dialog.dart';
import 'package:facitech/models/ticket_model.dart';
import 'package:facitech/utils/constants.dart';
import 'package:facitech/widgets/rating_bar.dart';
import 'package:facitech/widgets/status_dot.dart';
import 'package:facitech/utils/extensions.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderWidget extends StatelessWidget {
  final Function() onTap;
  final Function(double)? onRating;
  final TicketModel ticket;
  const HeaderWidget({
    Key? key,
    required this.onTap,
    this.onRating,
    required this.ticket,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 18.h),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Ticket No. ${ticket.ticketNo}',
                  style: TextStyle(
                    color: ColorConstants.blackTextColor,
                    fontSize: 18.sp,
                  ),
                ),
                Spacer(),
                StatusDot(status: ticket.status),
                SizedBox(width: 8.w),
                Text(
                  ticket.status.caps,
                  style: TextStyle(
                    color: ColorConstants.blackTextColor,
                    fontSize: 18.sp,
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
                    fontSize: 15.sp,
                  ),
                ),
                Spacer(),
                SizedBox(width: 8.w),
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
                  if (ticket.rating == 0.0) ...[
                    InkWell(
                      onTap: () async {
                        final _rating = await showRatingDialog(context);
                        if (_rating != null) {
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
