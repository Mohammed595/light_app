import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:light_app/constants/enums.dart';
import 'package:light_app/features/home/presentation/indexing_hepler.dart';
import 'package:light_app/features/home/presentation/widgets/deal_type_widget.dart';
import 'package:light_app/features/home/presentation/widgets/delivery_details_widget.dart';
import 'package:light_app/features/home/presentation/widgets/menu_app_bar_widget.dart';
import 'package:light_app/features/home/presentation/widgets/preview_meal_widget.dart';
import 'package:light_app/features/home/presentation/widgets/suspense_image_widget.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const MenuAppBarWidget(),
        body: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: SizedBox(
                height: 140.h,
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const SuspenseImageWidget();
                  },
                ),
              ),
            ),
            SizedBox(height: 10.h),
            const DeliveryDetailsWidget(),
            SizedBox(height: 10.h),
            Expanded(
                child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    // item widget
                    const PreviewMealWidget(),

                    SizedBox(
                      height: 2.h,
                    ),

                    // divider
                    const Divider(
                      height: 0.5,
                      color: Color(0xffDADBE1),
                    )
                  ],
                );
              },
            )),
            SizedBox(
              height: 50.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: DealType.values.length,
                itemBuilder: (context, index) {
                  return DealTypeWidget(
                    lable: DealType.values[index].detectedType(),
                    isSelected: myIndex == index ? true : false,
                    onTap: () {
                      setState(() {
                        myIndex = typeSelector(DealType.values[index]);
                      });
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
