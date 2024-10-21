import 'package:flutter/material.dart';
import 'dietPlanDetailsPage.dart';
import 'diet_data.dart'; // Import the data file

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diet Plan App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Diet Plans',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: dietPlans.length, // Use dietPlans list length
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      title: Text(dietPlans[index].name), // Display the diet name
                      subtitle: Text(dietPlans[index].description),
                      trailing: Icon(Icons.chevron_right),
                      onTap: () {
                        // Navigate to the diet plan details
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DietPlanDetailsPage(
                              dietPlanName: dietPlans[index].name,
                              dietPlanDescription: dietPlans[index].description,
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the add new diet plan page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddNewDietPlanPage(),
                  ),
                );
              },
              child: Text('Add New Diet Plan'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50), // Full width
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Add New Diet Plan Page
class AddNewDietPlanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Diet Plan'),
      ),
      body: Center(
        child: Text(
          'Form to add a new diet plan goes here.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
