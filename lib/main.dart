import "package:basic_level_app/home_page.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(393, 830),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return DefaultTextHeightBehavior(
          textHeightBehavior: const TextHeightBehavior(
            leadingDistribution: TextLeadingDistribution.even,
          ),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: 'Open Sans',
            ),
            home: HomePage(),
          ),
        );
      },
    );
  }
}
