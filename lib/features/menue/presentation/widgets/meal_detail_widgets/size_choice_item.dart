
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:light_app/constants/app_colors.dart';
import 'package:light_app/constants/text_styles.dart';

class SizeChoiceItem extends StatelessWidget {
  const SizeChoiceItem(
      {super.key,
      required this.sizeLabel,
      required this.sizePrice,
      required this.isSelected,
      required this.onTap});
  final String sizePrice;
  final String sizeLabel;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          sizeLabel,
          style: AppTextStyple.font15Width500Grey.copyWith(
              color: const Color(0xff201A1A),
              fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500),
        ),
        const Spacer(),
        Text(
          '-SAR $sizePrice',
          style: AppTextStyple.font15Width500Grey
              .copyWith(color: isSelected ? AppColors.primary: const Color(0xff201A1A)),
        ),
        SizedBox(width: 5.h),
        GestureDetector(
            onTap: isSelected ? () {} : onTap,
            child: Icon(
              isSelected ? Icons.radio_button_on_sharp : Icons.radio_button_off,
              color: isSelected ? AppColors.primary : const Color(0xffDADBE1),
            ))
      ],
    );
  }
}
