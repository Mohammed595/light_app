import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:light_app/constants/assets_path.dart';

class SuspenseImageWidget extends StatelessWidget {
  const SuspenseImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: SizedBox(
        width: 310.w,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.h),
          child: Image.asset(
            AppImage.fakeImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
