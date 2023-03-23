import 'package:basic_level_app/utils/app_colours.dart';
import 'package:basic_level_app/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      height: 44.h,
      margin: EdgeInsets.only(bottom: 16.h),
      alignment: Alignment.center,
      child: Container(
        height: 22.h,
        child: GestureDetector(
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
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          onTap: () {
            _launchUrl(url);
          },
        ),
      ),
    );
  }
}
