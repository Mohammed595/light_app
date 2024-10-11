
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:light_app/constants/assets_path.dart';
import 'package:light_app/constants/text_styles.dart';

class PreviewMealWidget extends StatelessWidget {
  const PreviewMealWidget({
    super.key,
  });

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
                child: Image.asset(
                  AppImage.mealImage,
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
                  const Text(
                    'Summer Sushi Platter',
                    style: AppTextStyple.font18Width500Black,
                  ),
                  const Text(
                    'Fresh and colorful, expertly made with the freshest succulent shrimp, creamy avocado, and tangy pickled ginger. A drizzle of our signature sauce adds the perfect finishing touch to this refreshing and satisfying meal.',
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
                        const Text(
                          'SAR 41.00',
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
