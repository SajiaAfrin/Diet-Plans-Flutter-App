import 'package:flutter/material.dart';

class DietPlanHomePage extends StatefulWidget {
  const DietPlanHomePage({Key? key}) : super(key: key);

  @override
  State<DietPlanHomePage> createState() => _DietPlanHomePageState();
}

class _DietPlanHomePageState extends State<DietPlanHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diet Plans'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to the diet plan creation page
                Navigator.pushNamed(context, '/create_diet_plan');
              },
              child: const Text('Create Diet Plan'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the diet plan list page
                Navigator.pushNamed(context, '/diet_plan_list');
              },
              child: const Text('View Diet Plans'),
            ),
          ],
        ),
      ),
    );
  }
}