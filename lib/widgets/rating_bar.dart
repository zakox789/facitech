import 'package:facitech/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StaticRatingBar extends StatelessWidget {
  final double val;
  final double? size;
  final MainAxisAlignment? mainAxisAlignment;

  const StaticRatingBar({
    Key? key,
    required this.val,
    this.mainAxisAlignment,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _val = val;
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

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final double size;
  final Function(int)? onRatingChanged;

  StarRating({
    this.starCount = 5,
    this.rating = 0,
    this.size = 16,
    this.onRatingChanged,
  });

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = Icon(
        Icons.star_rounded,
        size: size.r,
        color: ColorConstants.ratingEmptyColor,
      );
    } else if (index > rating - 1 && index < rating) {
      icon = Icon(
        Icons.star_half_rounded,
        size: size.r,
        color: ColorConstants.ratingColor,
      );
    } else {
      icon = Icon(
        Icons.star_rounded,
        size: size.r,
        color: ColorConstants.ratingColor,
      );
    }
    return InkResponse(
      onTap: () => onRatingChanged!(index + 1),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        starCount,
        (index) => buildStar(
          context,
          index,
        ),
      ),
    );
  }
}
