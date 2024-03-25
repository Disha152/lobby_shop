class CustomPricingCalculator {
//calculates Price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double shippingCost = getShippingCostForLocation(location);
    double totalPrice = productPrice + (productPrice * taxRate) + shippingCost;
    return totalPrice;
    
  }
  
  static double getShippingCostForLocation(String location) {
    if (location == 'India') {
      return 50;
    } else {
      return 100;
    }
  }
  
  static double getTaxRateForLocation(String location) {
    if (location == 'India') {
      return 0.18;
    } else {
      return 0.15;
    }
  }

  static double calculateTotalPriceWithDiscount(double productPrice, String location, double discount) {
    double taxRate = getTaxRateForLocation(location);
    double shippingCost = getShippingCostForLocation(location);
    double totalPrice = productPrice + (productPrice * taxRate) + shippingCost;
    totalPrice = totalPrice - (totalPrice * discount);
    return totalPrice;
  }

  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double tax = productPrice * taxRate;
    return tax.toStringAsFixed(2);
  }

  static String getShippingCost(String location) {
    double shippingCost = getShippingCostForLocation(location);
    return shippingCost.toStringAsFixed(2);
  }

  
}
