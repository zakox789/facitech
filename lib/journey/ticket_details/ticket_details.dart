import 'package:facitech/models/ticket_model.dart';
import 'package:facitech/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/body_widget.dart';
import 'widgets/close_procedure_widget.dart';
import 'widgets/header_widget.dart';
import 'widgets/profile_widget.dart';

class TicketDetails extends StatelessWidget {
  final TicketModel ticket;
  final Function() onTap;
  final Function(double)? onRating;
  final Function()? onClose;

  const TicketDetails({
    Key? key,
    required this.ticket,
    required this.onTap,
    this.onRating,
    this.onClose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(
              onTap: onTap,
              onRating: onRating,
              ticket: ticket,
            ),
            BodyWidget(),
            SizedBox(height: 12.h),
            Divider(
              thickness: 0.7.w,
              color: ColorConstants.borderColor,
            ),
            ProfileWidget(
              name: 'Jennet John',
              profileImg: AssetsConstants.actress,
            ),
            SizedBox(height: 18.h),
            ProfileWidget(
              name: 'Vignesh Sivan',
              profileImg: AssetsConstants.actor,
            ),
            if (ticket.status != 'closed')
              CloseProcedureWidget(
                onClose: onClose,
              ),
            SizedBox(height: 32.h),
          ],
        ),
      ),
    );
  }
}
