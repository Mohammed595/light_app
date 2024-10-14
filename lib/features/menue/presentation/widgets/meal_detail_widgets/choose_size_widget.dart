import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:light_app/constants/text_styles.dart';
import 'package:light_app/features/menue/presentation/widgets/meal_detail_widgets/size_choice_item.dart';

class ChooseSizeWidget extends StatefulWidget {
  const ChooseSizeWidget({super.key});

  @override
  State<ChooseSizeWidget> createState() => _ChooseSizeWidgetState();
}

class _ChooseSizeWidgetState extends State<ChooseSizeWidget> {
  void changeRadioState(int newIndex) {
    setState(() {
      radioIndex = newIndex;
    });
  }

  int radioIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Choose your size',
            style: AppTextStyple.font18Width500Black.copyWith(fontSize: 16),
          ),
          SizedBox(height: 8.h),
          SizeChoiceItem(
            isSelected: radioIndex == 1 ? true : false,
            sizeLabel: 'Small',
            sizePrice: '10',
            onTap: () {
              changeRadioState(1);
            },
          ),
          SizedBox(height: 8.h),
          SizeChoiceItem(
            isSelected: radioIndex == 2 ? true : false,
            sizeLabel: 'Medium',
            sizePrice: '12',
            onTap: () {
              changeRadioState(2);
            },
          ),
          SizedBox(height: 8.h),
          SizeChoiceItem(
            isSelected: radioIndex == 3 ? true : false,
            sizeLabel: 'Large',
            sizePrice: '15',
            onTap: () {
              changeRadioState(3);
            },
          ),
          //
        ],
      ),
    );
  }
}
