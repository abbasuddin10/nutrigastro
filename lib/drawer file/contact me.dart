import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMePage extends StatelessWidget {
  final String email = 'hakeem@nutrigastro.com';

  void _launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
      queryParameters: {'subject': 'Contact from App'},
    );
    if (await canLaunch(emailUri.toString())) {
      await launch(emailUri.toString());
    } else {
      throw 'Could not launch $emailUri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Me'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage(
                  'assets/images/profile.jpeg'), // Make sure this image exists
            ),
            SizedBox(height: 20),
            Text(
              'Get in Touch with Me',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
                letterSpacing: 1.2,
              ),
              textAlign: TextAlign.center, // Correct usage
            ),
            SizedBox(height: 20),
            Text(
              'For inquiries or to simply say hello, feel free to reach out via email. I\'d love to hear from you!',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
                //textAlign: TextAlign.center, // Correct usage
              ),
              textAlign: TextAlign.center, // Correct usage
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: _launchEmail,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.email, color: Colors.white),
                  SizedBox(width: 10),
                  Text('Send Email'),
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Alternatively, you can contact me via WhatsApp for quick responses.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
                // textAlign: TextAlign.center, // Correct usage
              ),
              textAlign: TextAlign.center, // Correct usage
            ),
          ],
        ),
      ),
    );
  }
}
