import 'package:facitech/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyTitleWidget extends StatelessWidget {
  const BodyTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Electrical',
          style: TextStyle(
            fontSize: 20.sp,
            color: ColorConstants.primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        Icon(
          Icons.play_arrow,
          color: ColorConstants.primaryColor,
          size: 24.r,
        ),
        Text(
          'Fuse',
          style: TextStyle(
            fontSize: 20.sp,
            color: ColorConstants.primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
