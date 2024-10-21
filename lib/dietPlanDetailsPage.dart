import 'package:flutter/material.dart';
class DietPlanDetailsPage extends StatelessWidget {
  final String dietPlanName;
  final String dietPlanDescription;

  DietPlanDetailsPage({
    required this.dietPlanName,
    required this.dietPlanDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dietPlanName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              dietPlanName,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              dietPlanDescription,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 40),
            // You can add more details, tips, or information about the diet plan here
          ],
        ),
      ),
    );
  }
}
