
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:light_app/constants/text_styles.dart';

class MealInfoWidget extends StatelessWidget {
  const MealInfoWidget({
    super.key,
    required this.mealName,
    required this.mealDesc,
    required this.mealCal
  });

  final String mealName;
  final String mealDesc;
  final String mealCal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
           mealName,
            style: AppTextStyple.font18Width500Black,
          ),
          SizedBox(
            height: 5.h
          ),
          Text(
            mealDesc,
            style: AppTextStyple.font15Width500Grey
                .copyWith(color: const Color(0xff524344)),
          ),
          SizedBox(
            height: 5.h
          ),
           Text(
            '$mealCal Calories',
            style: AppTextStyple.font15Width500Primry,
          ),
        ],
      ),
    );
  }
}
