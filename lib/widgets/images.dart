import 'package:basic_level_app/utils/app_colours.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowImages extends StatefulWidget {
  const ShowImages({Key? key, required this.urlImages}) : super(key: key);

  final List<String> urlImages;

  @override
  State<ShowImages> createState() => _ShowImagesState();
}

class _ShowImagesState extends State<ShowImages> {
  int _current = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 346.w,
      height: 235.h,
      margin: EdgeInsets.only(left: 15.w, right: 14.w),
      child: Stack(
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 235.h,
              viewportFraction: 1,
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index + 1;
                });
              },
            ),
            itemCount: widget.urlImages.length,
            itemBuilder: (context, index, realIndex) {
              final urlImage = widget.urlImages[index];
              return buildImage(urlImage, index);
            },
          ),
          Opacity(
            opacity: 0.6,
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(bottom: 10.h),
              child: Container(
                width: 35.w,
                height: 16.h,
                padding: EdgeInsets.symmetric(vertical: 3.w, horizontal: 9.h),
                decoration: BoxDecoration(
                  color: AppColours.black,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(bottom: 11.h),
            child: Text(
              "$_current / ${widget.urlImages.length}",
              style: TextStyle(
                color: AppColours.white,
                fontSize: 9.sp,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildImage(String urlImage, int index) {
    return SizedBox(
      width: double.infinity,
      child: Image.network(
        urlImage,
        fit: BoxFit.cover,
      ),
    );
  }
}
