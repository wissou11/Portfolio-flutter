import 'package:flutter/material.dart';

class MyFavoriteFood extends StatelessWidget {
  const MyFavoriteFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Favorite Food"), centerTitle: true),
      body: ListView(
        children: [
          _buildFoodCard('Pasta', 'assets/images/pasta.jpg'),
          _buildFoodCard('Pizza', 'assets/images/pizza.jpg'),
          _buildFoodCard('Burger', 'assets/images/burger.jpg'),
          _buildFoodCard('Sushi', 'assets/images/sushi.jpg'),
        ],
      ),
    );
  }

  Widget _buildFoodCard(String foodName, String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 8.0,
        borderRadius: BorderRadius.circular(24.0),
        child: Container(
          height: 150.0, // Adjust card height
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              gradient: LinearGradient(
                colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  foodName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
