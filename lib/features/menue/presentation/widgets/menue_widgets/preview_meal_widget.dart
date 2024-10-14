
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:light_app/constants/text_styles.dart';

class PreviewMealWidget extends StatelessWidget {
  const PreviewMealWidget({
    super.key,
    required this.mealName,
    required this.mealDesc,
    required this.mealImg,
    required this.mealPrice
  });
  final String mealName;
  final String mealImg;
  final String mealDesc;
  final String mealPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: SizedBox(
        height: 90.h,
        width: double.infinity,
        child: Row(
          children: [
            // imahe
            SizedBox(
              height: 90.w,
              width: 85.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.h),
                child: Image.network(
                  mealImg,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
    
            // colom
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    mealName,
                    style: AppTextStyple.font18Width500Black,
                  ),
                   Text(
                    mealDesc,
                    style: AppTextStyple.font13Width400Gray,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                         Text(
                          'SAR $mealPrice',
                          style: AppTextStyple
                              .font15Width500Primry,
                        ),
                        Container(
                          
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              color: const Color(0xffF3265E)
                                  .withAlpha(20),
                              borderRadius:
                                  BorderRadius.circular(15.h)),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: Color(0xffF3265E),
                              ),
                              Text(
                                'Add to cart',
                                style: AppTextStyple
                                    .font15Width500Primry,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
