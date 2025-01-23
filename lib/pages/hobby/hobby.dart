import 'package:flutter/material.dart';

class MyHobbyPage extends StatelessWidget {
  const MyHobbyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hobby"), centerTitle: true),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                primary: false,
                children: [
                  _buildHobbyCard(Icons.code, "Coding"),
                  _buildHobbyCard(Icons.movie, "Watching Movies"),
                  _buildHobbyCard(Icons.run_circle_outlined, "Sport"),
                  _buildHobbyCard(Icons.book, "Reading"), // New hobby
                  _buildHobbyCard(Icons.music_note, "Music"), // New hobby
                  _buildHobbyCard(Icons.palette, "Drawing"), // New hobby
                  _buildHobbyCard(Icons.travel_explore, "Traveling"), // New hobby
                  _buildHobbyCard(Icons.videogame_asset, "Gaming"), // New hobby
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHobbyCard(IconData icon, String hobby) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.blue, size: 70),
            Text(hobby),
          ],
        ),
      ),
    );
  }
}
