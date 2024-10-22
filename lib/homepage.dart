import 'package:flutter/material.dart';

import 'dietPlanDetailsPage.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> dietPlans = [
    {
      "name": "Low-Carb Diet",
      "image": "assets/images/lowcarb.jfif",
    },
    {
      "name": "Keto Diet",
      "image": "assets/images/keto.jfif",
    },
    {
      "name": "High-Protein Diet",
      "image": "assets/images/hprotein.jfif",
    },
    {
      "name": "Mediterranean Diet",
      "image": "assets/images/intermittent.jfif",
    },
    {
      "name": "Vegetarian Diet",
      "image": "assets/images/veg.jfif",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Premium Diets'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dietPlans.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Navigate to the DietPlanDetailsPage with data
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DietPlanDetailsPage(
                      dietPlanName: dietPlans[index]["name"]!,
                      dietPlanImage: dietPlans[index]["image"]!,
                    ),
                  ),
                );
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                margin: EdgeInsets.symmetric(vertical: 10),
                elevation: 5,
                clipBehavior: Clip.antiAlias,
                child: Stack(
                  children: [
                    // Background image
                    Image.asset(
                      dietPlans[index]["image"]!,
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    // Overlay to darken the image
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                    ),
                    // Diet Plan Text
                    Positioned(
                      left: 16,
                      bottom: 16,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            dietPlans[index]["name"]!,
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "DIET",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
