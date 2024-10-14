import 'package:light_app/constants/enums.dart';

int typeSelector(DealType dealType) {
  switch (dealType.name) {
    case 'ramadanDeals':
      return 0;
    case 'mainDishes':
      return 1;
    case 'sideDishes':
      return 2;
    case 'forSharing':
      return 3;

    default:
      return 0;
  }
}
