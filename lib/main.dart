import 'package:facitech/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'journey/close_ticket/close_ticket_journey.dart';
import 'journey/open_ticket/open_ticket_journey.dart';
import 'widgets/app_bar.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 640),
        builder: () {
          return MaterialApp(
            title: 'Flutter Demo',
            home: MyHomePage(),
          );
        });
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              color: ColorConstants.primaryColor,
              child: TabBar(
                indicatorColor: ColorConstants.whiteTextColor,
                unselectedLabelColor: ColorConstants.whiteLightTextColor,
                labelColor: ColorConstants.whiteTextColor,
                labelStyle: TextStyle(fontSize: 14.sp),
                labelPadding: EdgeInsets.symmetric(
                  vertical: 16.h,
                ),
                tabs: [
                  Text(
                    'Open Tickets',
                  ),
                  Text(
                    'Close Tickets',
                  ),
                ],
              ),
            ),
            Container(
              color: ColorConstants.bgLightColor,
              height: 87.h,
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    ColorConstants.primaryColor,
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
                  'Raise a Ticket',
                  style: TextStyle(
                    color: ColorConstants.whiteTextColor,
                    fontSize: 18.sp,
                  ),
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  OpenTicket(),
                  ClosedTicket(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
