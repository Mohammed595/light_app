enum DealType {
  ramadanDeals,
  mainDishes,
  sideDishes,
  forSharing,
}

extension DetectedType on DealType {
  String detectedType() {
    switch (name) {
      case 'ramadanDeals':
        return 'ramadan deals';
      case 'mainDishes':
        return 'Main Dishes';
      case 'sideDishes':
        return 'Side Dishes';
      case 'forSharing':
        return 'For Sharing';

      default:
        return 'No data';
    }
  }
}
