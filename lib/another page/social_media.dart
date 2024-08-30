import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social Media'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          SocialMediaButton(
            icon: Icons.facebook,
            label: 'Facebook',
            url: 'https://www.facebook.com/profile.php?id=61553823935162',
          ),
          SocialMediaButton(
            icon: Icons.camera_alt,
            label: 'Instagram',
            url: 'https://www.instagram.com/nutrigastro_co',
          ),
          SocialMediaButton(
            icon: Icons.location_on_rounded,
            label: 'Location',
            url:
                'https://www.google.com/maps/place/Catering+San+Francisco+%7C+Nutri+Gastro/@37.7508806,-122.3881427,17z/data=!3m1!4b1!4m6!3m5!1s0x808f7f296b50389d:0xbfe9b9a5691a0b92!8m2!3d37.7508806!4d-122.3881427!16s%2Fg%2F11sq1td_kf?entry=ttu',
          ),
          SocialMediaButton(
            icon: Icons.extension,
            label: 'Yelp',
            url: 'https://www.yelp.com/biz/nutrigastro-san-francisco',
          ),
          SocialMediaButton(
            icon: Icons.business,
            label: 'LinkedIn',
            url: 'https://www.linkedin.com/company/nutrigastro-llc/',
          ),
          SocialMediaButton(
            icon: Icons.video_library,
            label: 'YouTube',
            url: 'https://www.youtube.com/channel/UC0bH9joyt-5XbQU1ooaxknA',
          ),
        ],
      ),
    );
  }
}

class SocialMediaButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final String url;

  SocialMediaButton(
      {required this.icon, required this.label, required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => launch(url),
      child: Card(
        elevation: 4.0,
        margin: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 50.0, color: Colors.blue),
            SizedBox(height: 10.0),
            Text(label,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
