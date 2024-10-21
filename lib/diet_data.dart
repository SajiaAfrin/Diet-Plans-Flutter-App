// diet_data.dart

// A class representing a diet plan
class DietPlan {
  final String name;
  final String description;

  DietPlan({required this.name, required this.description});
}

// Sample list of diet plans
final List<DietPlan> dietPlans = [
  DietPlan(
    name: "Keto Diet",
    description: "A low-carb, high-fat diet that helps burn fat."
  ),
  DietPlan(
    name: "Mediterranean Diet",
    description: "Emphasizes fruits, vegetables, whole grains, and healthy fats."
  ),
  DietPlan(
    name: "Paleo Diet",
    description: "Focuses on whole foods, lean proteins, fruits, and vegetables."
  ),
  DietPlan(
    name: "Vegan Diet",
    description: "Excludes all animal products and focuses on plant-based foods."
  ),
  DietPlan(
    name: "Intermittent Fasting",
    description: "Involves alternating periods of eating and fasting."
  ),
];
