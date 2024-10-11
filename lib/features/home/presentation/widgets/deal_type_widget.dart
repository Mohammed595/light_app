
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:light_app/constants/text_styles.dart';

class DealTypeWidget extends StatelessWidget {
  const DealTypeWidget({
    super.key,
    required this.lable,
    required this.isSelected,
    required this.onTap
  });

  final String lable ;
  final bool isSelected ;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(6.h),
            constraints: BoxConstraints(
              maxHeight: 3.h,
            ),
            width: 120.w,
            height: 1.5.h,
            decoration:isSelected ?
                const BoxDecoration(color: Color(0xffF3265E)) : null,
          ),
           Text(
            lable,
            style: isSelected ? AppTextStyple.font15Width500Primry : AppTextStyple.font15Width500Grey,
          )
        ],
      ),
    );
  }
}
