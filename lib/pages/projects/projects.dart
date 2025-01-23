import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          _buildProjectCard(
            projectName: 'Showroom Auto',
            description: 'Description of Project 1',
            githubLink: 'https://github.com/wissou11/tp1',
          ),
          _buildProjectCard(
            projectName: 'Movie App',
            description: 'Json server, Angular',
            githubLink: 'https://github.com/wissou11/movie-app',
          ),
          _buildProjectCard(
            projectName: 'Todo List',
            description: 'MongoDB, Nodejs, Angular',
            githubLink: 'https://github.com/wissou11/todolist',
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard({
    required String projectName,
    required String description,
    required String githubLink,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        shadowColor: Colors.blue,
        elevation: 12.0,
        child: Row(
          children: <Widget>[
            const Icon(
              Icons.web,
              size: 80.0,
              color: Colors.blue,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    projectName,
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  TextButton(
                    onPressed: () => _launchUrl(githubLink),
                    child: const Text(
                      'View on GitHub',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Updated launch URL function
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url); // Parse the URL as Uri
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }
}
