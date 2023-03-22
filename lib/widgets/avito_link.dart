import 'package:basic_level_app/utils/app_colours.dart';
import 'package:basic_level_app/utils/app_icons.dart';
import 'package:basic_level_app/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class Link extends StatelessWidget {
  const Link({Key? key, required this.url}) : super(key: key);

  final String url;

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Exception: can't launch url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColours.white,
          elevation: 0,
          //fixedSize: Size(156.w, 22.h),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.avitoImage,
              width: 21.w,
              height: 22.h,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              'Cмотреть на Avito',
              style: TextStyle(
                  color: AppColours.black,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        onPressed: () {
          _launchUrl(url);
        },
      ),
    );
  }
}