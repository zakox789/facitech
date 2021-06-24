import 'package:facitech/models/ticket_model.dart';
import 'package:facitech/utils/app_color_constant.dart';
import 'package:facitech/widgets/status_dot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OpenTicketDetails extends StatelessWidget {
  final TicketModel ticket;
  final Function() onTap;

  const OpenTicketDetails({
    Key? key,
    required this.ticket,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 14.h,
            horizontal: 24.w,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    ticket.ticketNo,
                    style: TextStyle(
                      color: ColorConstants.blackTextColor,
                      fontSize: 18.sp,
                    ),
                  ),
                  Spacer(),
                  StatusDot(
                    color: ColorConstants.activeColor,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    ticket.status,
                    style: TextStyle(
                      color: ColorConstants.blackTextColor,
                      fontSize: 18.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              Row(
                children: [
                  Text(
                    ticket.date,
                    style: TextStyle(
                      color: ColorConstants.blackLightTextColor,
                      fontSize: 15.sp,
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    ticket.time,
                    style: TextStyle(
                      color: ColorConstants.blackLightTextColor,
                      fontSize: 15.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 18.h),
              Row(
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
              ),
              SizedBox(height: 4.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Vishnu/Phase 1/Block A/1009',
                  style: TextStyle(
                      color: ColorConstants.blackTextColor, fontSize: 20.sp),
                ),
              ),
              SizedBox(height: 20.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed porttitor sodales massa et tristique. Aenean consectetur arcu id quam commodo, id tincidunt ex auctor.',
                  style: TextStyle(
                      color: ColorConstants.blackTextColor, fontSize: 15.sp),
                ),
              ),
              SizedBox(height: 12.h),
              Divider(
                thickness: 0.7.w,
                color: ColorConstants.dividerColor,
              ),
              Row(
                children: [
                  CircleAvatar(
                      radius: 28.r,
                      backgroundImage: AssetImage('assets/images/actor.png')),
                  SizedBox(width: 6.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jennet John',
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        'Lorem ipsum dolor sit amet',
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w300),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 18.h),
              Row(
                children: [
                  CircleAvatar(
                      radius: 28.r,
                      backgroundImage: AssetImage('assets/images/actress-.png')),
                  SizedBox(width: 6.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Vignesh Sivan',
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        'Lorem ipsum dolor sit amet',
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w300),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                padding: const EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width,
                height: 38.h,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: ColorConstants.dividerColor, width: 2.w),
                  borderRadius: BorderRadius.all(Radius.circular(22.r)), //
                ),
                child: Text(
                  'Share your thoughts here!',
                  style: TextStyle(
                      color: ColorConstants.greyTextColor, fontSize: 14.sp),
                ),
              ),
              SizedBox(height: 8.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                  child: Text('Tap Enter to Post your Comment',style: TextStyle(
                    color: ColorConstants.greyTextColor,
                  ),),
                ),
              ),
              Container(

                height: 87.h,
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
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
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.r),
                      ),
                    )),
                  ),
                  child: Text(
                    'Close Ticket',
                    style: TextStyle(
                      color: ColorConstants.whiteTextColor,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
