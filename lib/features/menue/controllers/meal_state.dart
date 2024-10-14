import 'package:light_app/features/menue/data/models/meal_model.dart';

class MealState {
  final List<MealModel>? meals;
  final bool isLoading;
  final String? error;

  MealState({this.meals, this.isLoading = false, this.error});

  MealState copyWith({
    List<MealModel>? meals,
    bool? isLoading,
    String? error,
  }) {
    return MealState(
      meals: meals ?? this.meals,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}