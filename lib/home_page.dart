import 'package:basic_level_app/utils/app_colours.dart';
import 'package:basic_level_app/utils/app_icons.dart';
import 'package:basic_level_app/widgets/avito_link.dart';
import 'package:basic_level_app/widgets/description.dart';
import 'package:basic_level_app/widgets/features.dart';
import 'package:basic_level_app/widgets/images.dart';
import 'package:basic_level_app/widgets/main_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColours.white,
        centerTitle: true,
        title: Text(
          'Предложение',
          style: TextStyle(
            color: AppColours.black,
            fontSize: 17.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset(AppIcons.upload),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 13),
                child: SvgPicture.asset(AppIcons.threeDots),
              ),
            ],
          )
        ],
      ),
      body: ListView(
        children: const [
          ShowImages(
            urlImages: [
              'https://67.img.avito.st/image/1/1.mrwDr7a5NlU1BvRQO7mnzzENNFO9DrRddQs0V7EaMlc.wyOy4BQ5tf6iAiRC0n7BpctaNhYZ9Rt2cJHzT5nqjQ4',
              'https://50.img.avito.st/image/1/1.GNG_eba6tDiJ0HY9gw04g3HasjILWrz6Dtq2Ph_ctg.V760HN0UKMhL39Nxy5eu_-FbxXnVkr5HywqxMOGc_Tk',
              'https://00.img.avito.st/image/1/1.YT3UHra5zdTitw_RmntbTua8z9Jqv0_corrP1marydY.8CTJbxRyb4ogGsrvg1Z1B1sLZ5NIGvBi1cV_fTUEbUg',
              'https://40.img.avito.st/image/1/1.7LyjTba5QFWV5IJQ907Xz5HvQlMd7MJd1elCVxH4RFc.cYZ-NYS037UEw5zQQn4iH0Pd0AB05zDGLueOu2RN_5E',
              'https://10.img.avito.st/image/1/1.UCB_eba6_MlJ0D7MUxBucrHa-sPLWvQLztr-z9_c_g.9KxR85ZVgrq1bMsZYx33JI7CoshGR2t7YkAQ_go5o8U',
            ],
          ),
          MainInfo(
            name: 'Квартира-студия, 40м, 16/23 эт.',
            location: 'Центр (Кировский р-н.), Очаковская, 39',
            price: '2,3 млн',
          ),
          Description(
            description:
                'Дом расположен в ЗЖМ, мкр Левенцовский, вблизи остановки общественного транспорта. Рядом расположены гипермаркеты "Магнит", "Пятерочка", "Лента", "Метро", отделение "Сбербанка". В районе работают 6 детских садов, 1 школа. Есть собственная управляющая компания.',
          ),
          Features(
            layout: 'Смежная',
            ceilingHeight: 'От 2,5 м',
            apartmentStatus: 'Без ремонта',
          ),
          Link(
            url: "www.avito.ru",
          ),
        ],
      ),
    );
  }
}
