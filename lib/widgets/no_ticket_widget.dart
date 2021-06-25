import 'package:facitech/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoTicketWidget extends StatelessWidget {
  const NoTicketWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Icon(
        Icons.add_circle_outline_rounded,
        size: 256.r,
        color: ColorConstants.emptyIconColor,
      ),
    );
  }
}
