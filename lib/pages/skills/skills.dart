import 'package:flutter/material.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titles = [
      'Flutter',
      'JavaScript',
      'Python',
      'MySQL',
      'Angular',
      'Node.js',
      'Data Analysis',
      'Machine Learning',
      'RESTful APIs',
      'HTML & CSS',
      'Power BI',
      'Dart Programming',
      'Git & GitHub',
      'Problem Solving',
    ];
    return Scaffold(
      appBar: AppBar(title: const Text("Skills"), centerTitle: true),
      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5.0,
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: ListTile(
              leading: const Icon(Icons.star, color: Colors.blue),
              title: Text(
                titles[index],
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
