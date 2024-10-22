import 'package:flutter/material.dart';
class DietPlanDetailsPage extends StatelessWidget {
  final String dietPlanName;
  final String dietPlanImage;

  DietPlanDetailsPage({
    required this.dietPlanName,
    required this.dietPlanImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dietPlanName),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display the diet plan image
            Image.asset(
              dietPlanImage,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dietPlanName,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Description:",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "This is a detailed description of the $dietPlanName. "
                    "Here, you can include information about what the diet involves, its benefits, "
                    "potential downsides, and any other relevant details that would help the user understand the diet better.",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Additional Information:",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "You can add more sections or content to this page, such as tips, recipes, or "
                    "specific guidelines for following the $dietPlanName.",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
