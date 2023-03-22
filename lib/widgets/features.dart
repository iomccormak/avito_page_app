import 'package:basic_level_app/utils/app_colours.dart';
import 'package:basic_level_app/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Features extends StatelessWidget {
  const Features({
    Key? key,
    required this.layout,
    required this.ceilingHeight,
    required this.apartmentStatus,
  }) : super(key: key);

  final String layout;
  final String ceilingHeight;
  final String apartmentStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Характеристики',
            style: TextStyle(
              color: AppColours.black,
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 11.h,
          ),
          Text(
            'Об объекте',
            style: TextStyle(
              color: AppColours.grey,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          Container(
            height: 44.h,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppColours.borderGrey),
              ),
            ),
            child: Row(
              children: [
                SvgPicture.asset(AppIcons.borderOuter),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  width: 145.w,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Планировка',
                    style: TextStyle(
                      color: AppColours.black,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  width: 27.w,
                ),
                Container(
                  width: 161.w,
                  alignment: Alignment.centerRight,
                  child: Text(
                    layout,
                    style: TextStyle(
                      color: AppColours.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 44.h,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppColours.borderGrey),
              ),
            ),
            child: Row(
              children: [
                SvgPicture.asset(AppIcons.borderTop),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  width: 145.w,
                  child: Text(
                    'Высота потолков',
                    style: TextStyle(
                      color: AppColours.black,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  width: 21.w,
                ),
                Container(
                  width: 167.w,
                  alignment: Alignment.centerRight,
                  child: Text(
                    ceilingHeight,
                    style: TextStyle(
                      color: AppColours.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 44.h,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppColours.borderGrey),
              ),
            ),
            child: Row(
              children: [
                SvgPicture.asset(AppIcons.tools),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  width: 145.w,
                  child: Text(
                    'Ремонт',
                    style: TextStyle(
                      color: AppColours.black,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  width: 21.w,
                ),
                Container(
                  width: 167.w,
                  alignment: Alignment.centerRight,
                  child: Text(
                    apartmentStatus,
                    style: TextStyle(
                      color: AppColours.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 44.h,
            child: Row(
              children: [
                SvgPicture.asset(AppIcons.chevronDown),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'Подробнее',
                  style: TextStyle(
                    color: AppColours.sky,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
