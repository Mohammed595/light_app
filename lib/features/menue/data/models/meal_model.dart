
class MealModel {
  final String mealImg;
  final String mealName;
  final String mealDesc;
  final String mealPrice;
  final String id;

  MealModel({
    required this.mealImg,
    required this.mealName,
    required this.mealDesc,
    required this.mealPrice,
    required this.id,
  });

  factory MealModel.fromJson(Map<String, dynamic> json) {
    return MealModel(
      mealImg: json['mealImg'],
      mealName: json['mealName'],
      mealDesc: json['mealDesc'],
      mealPrice: json['mealPrice'],
      id: json['id'],
    );
  }

  // Method to convert a Meal instance to a map (JSON)
  Map<String, dynamic> toJson() {
    return {
      'mealImg': mealImg,
      'mealName': mealName,
      'mealDesc': mealDesc,
      'mealPrice': mealPrice,
      'id': id,
    };
  }
}
