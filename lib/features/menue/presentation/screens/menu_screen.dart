import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:light_app/constants/enums.dart';
import 'package:light_app/features/menue/controllers/meal_controller.dart';
import 'package:light_app/features/menue/presentation/indexing_hepler.dart';
import 'package:light_app/features/menue/presentation/widgets/deal_type_widget.dart';
import 'package:light_app/features/menue/presentation/widgets/delivery_details_widget.dart';
import 'package:light_app/features/menue/presentation/widgets/menu_app_bar_widget.dart';
import 'package:light_app/features/menue/presentation/widgets/preview_meal_widget.dart';
import 'package:light_app/features/menue/presentation/widgets/suspense_image_widget.dart';


class MenuScreen extends ConsumerStatefulWidget {
  const MenuScreen({super.key});

  @override
  ConsumerState<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends ConsumerState<MenuScreen> {
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    final mealState = ref.watch(mealControllerProvider);

    return SafeArea(
      child: Scaffold(
        appBar: const MenuAppBarWidget(),
        body: Column(
          children: [
            SizedBox(height: 10.h),
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
            // Display meals based on API data or loading/error states
            Expanded(
              child: mealState.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : mealState.error != null
                      ? Center(child: Text('Error: ${mealState.error}'))
                      : ListView.builder(
                          itemCount: mealState.meals?.length ?? 0,
                          itemBuilder: (context, index) {
                            final meal = mealState.meals![index];
                            return Column(
                              children: [
                                SizedBox(height: 2.h),
                                PreviewMealWidget(
                                  mealImg: meal.mealImg,
                                  mealName: meal.mealName,
                                  mealDesc: meal.mealDesc,
                                  mealPrice: meal.mealPrice
                                ),
                                SizedBox(height: 2.h),
                                const Divider(
                                  height: 0.5,
                                  color: Color(0xffDADBE1),
                                ),
                              ],
                            );
                          },
                        ),
            ),
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
            ),
          ],
        ),
      ),
    );
  }
}
