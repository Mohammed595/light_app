
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeliveryDetailsWidget extends StatelessWidget {
  const DeliveryDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Container(
        width: double.infinity,
        height: 44.h,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        decoration: BoxDecoration(
            color: const Color(0xffF6EFF4),
            borderRadius: BorderRadius.circular(10.h)),
        child: Row(
          children: [
            const Icon(
              Icons.delivery_dining,
              color: Color(0xffF3265E),
              size: 28,
            ),
            SizedBox(
              width: 9.w,
            ),
            SizedBox(
              width: 250.w,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Delivery',
                    style: TextStyle(color: Color(0xffF3265E)),
                  ),
                  Text(
                    'RHYA3696, 3696 Al Imam Saud Ibn Abdul Aziz Brand Road,',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              size: 16.h,
            )
          ],
        ),
      ),
    );
  }
}
