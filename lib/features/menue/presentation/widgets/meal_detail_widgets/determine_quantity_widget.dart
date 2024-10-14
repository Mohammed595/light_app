
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:light_app/constants/app_colors.dart';
import 'package:light_app/constants/text_styles.dart';

class DetermineQuantityWidget extends StatelessWidget {
  const DetermineQuantityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.h),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.all(4.h),
              decoration: BoxDecoration(
                color: const Color(0xffF6EFF4),
                borderRadius: BorderRadius.circular(15.h),
              ),
              width: double.infinity,
              height: 50.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(Icons.remove),
                  Text(
                    '1',
                    style: AppTextStyple.font28Width500Black
                        .copyWith(fontSize: 22),
                  ),
                  const Icon(
                    Icons.add,
                    color: AppColors.primary,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              margin: EdgeInsets.all(4.h),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(15.h),
              ),
              width: double.infinity,
              height: 50.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Add to bag',
                    style: AppTextStyple.font15Width500Primry
                        .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'SAR 51.00',
                    style: AppTextStyple.font15Width500Primry
                        .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
