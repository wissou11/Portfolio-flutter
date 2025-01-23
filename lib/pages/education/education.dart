import 'package:flutter/material.dart';
import 'package:portfolio/pages/education/images.dart';

class MyEducation extends StatefulWidget {
  const MyEducation({Key? key}) : super(key: key);

  @override
  _MyEducationState createState() => _MyEducationState();
}

class _MyEducationState extends State<MyEducation> {
  @override
  Widget build(BuildContext context) {
    String title = "Education";
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue.shade800,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
        children: <Widget>[
          _buildEducationCard(
            image: bac,
            institution: 'Bac Sciences Expérimentales',
            period: '2021-2022',
          ),
          _buildEducationCard(
            image: ihec,
            institution: '1BI in IHEC CARTHAGE',
            period: '2022-2023',
          ),
          _buildEducationCard(
            image: ihec,
            institution: '2BI in IHEC CARTHAGE',
            period: '2023-2024',
          ),
          _buildEducationCard(
            image: ihec,
            institution: '3BI in IHEC CARTHAGE',
            period: '2024-Present',
          ),
        ],
      ),
    );
  }

  Widget _buildEducationCard({
    required String image,
    required String institution,
    required String period,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        elevation: 8.0,
        shadowColor: Colors.blue.shade300,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        institution,
                        style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        period,
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
