import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileWidget extends StatelessWidget {
  final String profileImg;
  final String name;
  final String description;
  const ProfileWidget({
    Key? key,
    required this.profileImg,
    required this.name,
    this.description: 'Lorem ipsum dolor sit amet',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(radius: 28.r, backgroundImage: AssetImage(profileImg)),
        SizedBox(width: 6.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 8.h),
            Text(
              description,
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w300),
            ),
          ],
        )
      ],
    );
  }
}
