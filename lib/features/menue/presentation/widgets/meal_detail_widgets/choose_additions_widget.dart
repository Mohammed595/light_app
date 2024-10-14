import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:light_app/constants/text_styles.dart';
import 'package:light_app/features/menue/presentation/widgets/meal_detail_widgets/additions_choice_item.dart';

class ChooseAdditions extends StatefulWidget {
  const ChooseAdditions({super.key});

  @override
  State<ChooseAdditions> createState() => _ChooseAdditionsState();
}

class _ChooseAdditionsState extends State<ChooseAdditions> {
  int checkboxIndex = 0;
  void changecheckBoxState(int newIndex) {
    setState(() {
      checkboxIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Choose additions',
                style: AppTextStyple.font18Width500Black.copyWith(fontSize: 16),
              ),
              SizedBox(
                width: 10.w,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.h),
                    border: Border.all(color: const Color(0xffDADBE1))),
                child: Text(
                  'Select up to 3',
                  style: AppTextStyple.font15Width500Grey
                      .copyWith(color: const Color(0xff524344)),
                ),
              )
            ],
          ),
          SizedBox(height: 8.h),
          AdditionsChoiceItem(
            isSelected: checkboxIndex == 1 ? true : false,
            sizeLabel: 'Herbs',
            addPrice: '1',
            onTap: () {
              changecheckBoxState(1);
            },
          ),
          SizedBox(height: 8.h),
          AdditionsChoiceItem(
            isSelected: checkboxIndex == 2 ? true : false,
            sizeLabel: 'Chicken',
            addPrice: '5',
            onTap: () {
              changecheckBoxState(2);
            },
          ),
          SizedBox(height: 8.h),
          AdditionsChoiceItem(
            isSelected: checkboxIndex == 3 ? true : false,
            sizeLabel: 'Egg',
            addPrice: '155',
            onTap: () {
              changecheckBoxState(3);
            },
          ),
          //
        ],
      ),
    );
  }
}
