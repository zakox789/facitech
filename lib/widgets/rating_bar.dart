import 'package:facitech/utils/app_color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingBar extends StatelessWidget {
  final int val;
  final double? size;
  final MainAxisAlignment? mainAxisAlignment;

  const RatingBar({
    Key? key,
    required this.val,
    this.mainAxisAlignment,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _val = val;
    List<Widget> widget = [];
    for (int i = 0; i < 5; i++) {
      IconData data;
      if (_val > 0) {
        data = Icons.star;
        _val--;
      } else {
        data = Icons.star_outline;
      }
      widget.add(
        Icon(
          data,
          color: ColorConstants.ratingColor,
          size: size ?? 16.r,
        ),
      );
    }

    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: widget,
    );
  }
}
