import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/dahsboard/component/shapedashboard.dart';
import 'package:portfolio/pages/education/education.dart';
import 'package:portfolio/pages/favorite_food/favorite_food.dart';
import 'package:portfolio/pages/hobby/hobby.dart';
import 'package:portfolio/pages/profile/profile.dart';
import 'package:portfolio/pages/skills/skills.dart';
import 'package:portfolio/pages/works/works.dart';
import 'package:portfolio/pages/clubs/clubs.dart';  // Assuming the clubs page
import 'package:portfolio/pages/projects/projects.dart';  // Assuming the projects page

class MyDashboard extends StatelessWidget {
  const MyDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildHeaderBackground(context),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  _buildHeaderTitle(),
                  const SizedBox(height: 15),
                  Expanded(
                    child: _buildGridMenu(context),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderBackground(BuildContext context) {
    return ClipPath(
      clipper: ShapeDashboard(),
      child: Container(
        height: 250,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.blue.shade300],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderTitle() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "My Dashboard",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildGridMenu(BuildContext context) {
    final menuItems = [
      _MenuItem(
        icon: Icons.person,
        label: "Profile",
        onTap: () => _navigateTo(context, const ProfileScreen()),
      ),
      _MenuItem(
        icon: Icons.work,
        label: "Work",
        onTap: () => _navigateTo(context, const MyWorkPage()),
      ),
      _MenuItem(
        icon: Icons.engineering,
        label: "Skill",
        onTap: () => _navigateTo(context, const SkillPage()),
      ),
      _MenuItem(
        icon: Icons.school_rounded,
        label: "Education",
        onTap: () => _navigateTo(context, const MyEducation()),
      ),
      _MenuItem(
        icon: EvaIcons.heart,
        label: "Hobby",
        onTap: () => _navigateTo(context, const MyHobbyPage()),
      ),
      _MenuItem(
        icon: Icons.fastfood_rounded,
        label: "Favorite Food",
        onTap: () => _navigateTo(context, const MyFavoriteFood()),
      ),
      _MenuItem(
        icon: EvaIcons.people,
        label: "Clubs",
        onTap: () => _navigateTo(context, const ClubsPage()),  // New page for Clubs
      ),
      _MenuItem(
        icon: EvaIcons.briefcase,
        label: "Projects",
        onTap: () => _navigateTo(context, const ProjectsPage()),  // New page for Projects
      ),
    ];

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          final item = menuItems[index];
          return _buildMenuItem(item);
        },
      ),
    );
  }

  Widget _buildMenuItem(_MenuItem item) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: item.onTap,
        splashColor: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(item.icon, size: 70, color: Colors.blue),
              Text(item.label),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateTo(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}

class _MenuItem {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _MenuItem({
    required this.icon,
    required this.label,
    required this.onTap,
  });
}
