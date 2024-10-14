import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:light_app/constants/app_colors.dart';
import 'package:light_app/constants/text_styles.dart';
import 'package:light_app/features/menue/data/models/meal_model.dart';
import 'package:light_app/features/menue/presentation/widgets/meal_detail_widgets/choose_additions_widget.dart';
import 'package:light_app/features/menue/presentation/widgets/meal_detail_widgets/choose_size_widget.dart';
import 'package:light_app/features/menue/presentation/widgets/meal_detail_widgets/determine_quantity_widget.dart';
import 'package:light_app/features/menue/presentation/widgets/meal_detail_widgets/meal_info_widget.dart';

class MealDetilsScreen extends StatelessWidget {
  const MealDetilsScreen({super.key, 
  required this.meal});

  final MealModel meal ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100.w,
        title:  Text(
          meal.mealName,
          style: AppTextStyple.font18Width500Black,
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // SizedBox(width: 10.w),
                const Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.primary,
                ),
                SizedBox(width: 1.w),
                const Text(
                  'Menue',
                  style: AppTextStyple.font15Width500Primry,
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 200.h,
              child: Image.network(
                meal.mealImg,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
             MealInfoWidget(mealDesc: meal.mealDesc,mealName: meal.mealName,mealCal: meal.mealPrice,),
            const Divider(
              height: 0.1,
            ),
            const ChooseSizeWidget(),
            const Divider(
              height: 0.1,
            ),
            const ChooseAdditions(),
            const Divider(
              height: 0.1,
            ),
            Padding(
              padding: EdgeInsets.all(10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Note',
                    style: AppTextStyple.font18Width500Black
                        .copyWith(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Add a Note',
                    style:
                        AppTextStyple.font15Width500Grey.copyWith(fontSize: 15),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 0.1,
            ),
            const DetermineQuantityWidget(),
            SizedBox(height: 20.h,)
          ],
        ),
      ),
    );
  }
}
