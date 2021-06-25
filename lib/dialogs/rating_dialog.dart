import 'package:facitech/utils/constants.dart';
import 'package:facitech/widgets/rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<dynamic> showRatingDialog(BuildContext context) async {
  return await showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        backgroundColor: ColorConstants.whiteTextColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: 16.w,
                left: 24.w,
                top: 16.h,
                bottom: 36.h,
              ),
              child: RatingWidget(),
            )
          ],
        ),
      );
    },
  );
}

class RatingWidget extends StatefulWidget {
  RatingWidget({Key? key}) : super(key: key);

  @override
  _RatingWidgetState createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  double _rating = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.close,
              size: 32.r,
            ),
          ),
        ),
        Text(
          'Rate the Service',
          style: TextStyle(fontSize: 20.sp),
        ),
        SizedBox(height: 20.h),
        StarRating(
          rating: _rating,
          size: 48,
          onRatingChanged: (int rating) {
            _rating = rating.toDouble();
            setState(() {});
            Future.delayed(Duration(milliseconds: 500));
            Navigator.pop(context, _rating);
          },
        ),
      ],
    );
  }
}
