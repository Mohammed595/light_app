
// here write all use cases
import 'package:light_app/features/menue/data/models/meal_model.dart';

abstract class IMealRepository  {
  Future<List<MealModel>> fetchMeals();
}