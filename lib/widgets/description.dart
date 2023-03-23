import 'package:basic_level_app/utils/app_colours.dart';
import 'package:basic_level_app/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Description extends StatelessWidget {
  const Description({Key? key, required this.description}) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Описание',
            style: TextStyle(
              color: AppColours.black,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 11.h,
          ),
          Text(
            description,
            style: TextStyle(
              color: AppColours.black,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 7.h,
          ),
          Row(
            children: [
              SvgPicture.asset(AppIcons.chevronDown),
              SizedBox(
                width: 5.5.w,
              ),
              Text(
                'Подробнее',
                style: TextStyle(
                  color: AppColours.sky,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
