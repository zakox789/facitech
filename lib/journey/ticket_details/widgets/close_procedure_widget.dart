import 'package:facitech/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CloseProcedureWidget extends StatelessWidget {
  final Function()? onClose;
  const CloseProcedureWidget({
    Key? key,
    this.onClose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        Container(
          padding: const EdgeInsets.all(16),
          width: MediaQuery.of(context).size.width,
          height: 38.h,
          decoration: BoxDecoration(
            border: Border.all(
              color: ColorConstants.borderColor,
              width: 2.w,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(
                22.r,
              ),
            ), //
          ),
          child: Text(
            'Share your thoughts here!',
            style: TextStyle(
              color: ColorConstants.greyTextColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w200,
            ),
          ),
        ),
        SizedBox(height: 8.h),
        RichText(
          text: TextSpan(
            text: 'Tap',
            style: TextStyle(
              color: ColorConstants.greyTextColor,
            ),
            children: [
              TextSpan(
                text: ' Enter ',
                style: TextStyle(
                  color: Color(0xFF686868),
                ),
              ),
              TextSpan(
                text: 'to Post your Comment',
                style: TextStyle(
                  color: ColorConstants.greyTextColor,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 24.h),
        TextButton(
          onPressed: onClose,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              ColorConstants.primaryDarkColor,
            ),
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(
                horizontal: 24.w,
                vertical: 8.h,
              ),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50.r),
                ),
              ),
            ),
          ),
          child: Text(
            'Close Ticket',
            style: TextStyle(
              color: ColorConstants.whiteTextColor,
              fontSize: 18.sp,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
