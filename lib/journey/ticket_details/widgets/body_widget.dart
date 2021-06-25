import 'package:facitech/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'body_title_widget.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BodyTitleWidget(),
        SizedBox(height: 4.h),
        Text(
          'Vishnu/Phase 1/Block A/1009',
          style: TextStyle(
            color: ColorConstants.blackTextColor,
            fontSize: 20.sp,
          ),
        ),
        SizedBox(height: 20.h),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed porttitor sodales massa et tristique. Aenean consectetur arcu id quam commodo, id tincidunt ex auctor.',
          style: TextStyle(
            color: ColorConstants.blackTextColor,
            fontSize: 15.sp,
          ),
        ),
      ],
    );
  }
}
