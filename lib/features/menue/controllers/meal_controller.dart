import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_app/features/menue/controllers/meal_state.dart';
import 'package:light_app/features/menue/data/repositories/meal_repository.dart.dart';



class MealController extends StateNotifier<MealState> {
  final MealRepository mealRepo ;

  MealController(this.mealRepo) : super(MealState(isLoading: true)) {
    fetchMeals();
  }

  Future<void> fetchMeals() async {
    try {
      state = state.copyWith(isLoading: true, error: null);
      final meals = await mealRepo.fetchMeals();
      state = state.copyWith(meals: meals, isLoading: false);
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }
}

// for DJ
final mealRepositoryProvider = Provider((ref) => MealRepository());

final mealControllerProvider =
    StateNotifierProvider<MealController, MealState>((ref) {
  final mealRepo = ref.watch(mealRepositoryProvider);
  return MealController(mealRepo);
});