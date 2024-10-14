import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:light_app/features/menue/data/models/meal_model.dart';
import 'package:light_app/features/menue/data/repositories/i_meal_repository.dart';

class MealRepository implements IMealRepository{

  final String baseUrl = 'https://65986613668d248edf248f0d.mockapi.io';

  @override
  Future<List<MealModel>> fetchMeals() async {
    final url = Uri.parse('$baseUrl/meals/booking');
    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        
        return data.map((mealJson) => MealModel.fromJson(mealJson)).toList();
      } else {
        // i wanna use Either to handle this error > more pro
        throw Exception('Failed to load meals');
      }
    } catch (error) {
      throw Exception('Error fetching meals: $error');
    }
  }

}