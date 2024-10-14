
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:light_app/constants/app_colors.dart';
import 'package:light_app/constants/text_styles.dart';

class AdditionsChoiceItem extends StatelessWidget {
  const AdditionsChoiceItem(
      {super.key,
      required this.sizeLabel,
      required this.addPrice,
      required this.isSelected,
      required this.onTap});
  final String addPrice;
  final String sizeLabel;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            GestureDetector(
                onTap: isSelected ? () {} : onTap,
                child: Icon(
                  isSelected ? Icons.check_box : Icons.check_box_outline_blank,
                  color:
                      isSelected ? AppColors.primary : const Color(0xffDADBE1),
                )),
            SizedBox(width: 5.h),
            Text(
              sizeLabel,
              style: AppTextStyple.font15Width500Grey.copyWith(
                  color: const Color(0xff201A1A),
                  fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500),
            ),
          ],
        ),
        const Spacer(),
        Text(
          '+SAR $addPrice',
          style: AppTextStyple.font15Width500Grey.copyWith(
              color: isSelected ? AppColors.primary : const Color(0xff201A1A)),
        ),
        SizedBox(width: 5.h),
      ],
    );
  }
}
