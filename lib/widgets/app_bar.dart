import 'package:facitech/utils/app_color_constant.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).padding.top,
          color: ColorConstants.primaryDarkColor,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [
                    ColorConstants.primaryColor,
                    ColorConstants.primaryDarkColor,
                  ]),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 16.h,
                  width: 16.w,
                  child: Icon(
                    Icons.arrow_back,
                    color: ColorConstants.whiteTextColor,
                  ),
                ),
                SizedBox(width: 32.w),
                Text(
                  'Help Desk',
                  style: TextStyle(
                      color: ColorConstants.whiteTextColor,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                SizedBox(
                  height: 16.h,
                  width: 16.w,
                  child: Icon(
                    Icons.search_rounded,
                    color: ColorConstants.whiteTextColor,
                  ),
                ),
                SizedBox(width: 20.w),
                SizedBox(
                  height: 16.h,
                  width: 16.w,
                  child: Icon(
                    Icons.more_vert,
                    color: ColorConstants.whiteTextColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(
        double.infinity,
        80,
      );
}
