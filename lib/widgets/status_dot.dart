import 'package:facitech/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatusDot extends StatelessWidget {
  final String status;

  const StatusDot({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.r,
      width: 6.r,
      decoration: BoxDecoration(
        color: status == 'closed'
            ? ColorConstants.closeColor
            : ColorConstants.activeColor,
        borderRadius: BorderRadius.all(
          Radius.circular(6.r),
        ),
      ),
    );
  }
}
