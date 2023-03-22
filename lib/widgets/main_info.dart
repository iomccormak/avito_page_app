import 'package:basic_level_app/utils/app_colours.dart';
import 'package:basic_level_app/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainInfo extends StatelessWidget {
  const MainInfo({
    Key? key,
    required this.name,
    required this.location,
    required this.price,
  }) : super(key: key);

  final String name;
  final String location;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12.h, bottom: 15.h, left: 16.w, right: 16.w),
      child: Column(
        //mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
              color: AppColours.black,
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            children: [
              SvgPicture.asset(AppIcons.geoAlt),
              SizedBox(
                width: 4.w,
              ),
              Text(
                location,
                style: TextStyle(
                  color: AppColours.sky,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 5.w,
              right: 5.w,
              top: 3.h,
              bottom: 4.h,
            ),
            color: AppColours.yellow,
            child: Text(
              price,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
