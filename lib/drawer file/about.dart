import 'package:flutter/material.dart';

class AboutMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '𝐄𝐱𝐞𝐜𝐮𝐭𝐢𝐯𝐞 𝐂𝐡𝐞𝐟 & 𝐅𝐨𝐮𝐧𝐝𝐞𝐫 @ 𝐍𝐮𝐭𝐫𝐢 𝐆𝐚𝐬𝐭𝐫𝐨 | 𝐂𝐮𝐥𝐢𝐧𝐚𝐫𝐲 𝐀𝐫𝐭𝐬',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '𝐂𝐮𝐥𝐢𝐧𝐚𝐫𝐲 𝐕𝐢𝐬𝐢𝐨𝐧𝐚𝐫𝐲 | 𝐅𝐨𝐮𝐧𝐝𝐞𝐫 𝐨𝐟 𝐍𝐮𝐭𝐫𝐢𝐆𝐚𝐬𝐭𝐫𝐨 | 𝐁𝐚𝐧𝐪𝐮𝐞𝐭𝐬, 𝐂𝐚𝐭𝐞𝐫𝐢𝐧𝐠, 𝐅𝐨𝐨𝐝 𝐒𝐞𝐫𝐯𝐢𝐜𝐞 𝐄𝐱𝐩𝐞𝐫𝐭',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to Nutri Gastro, where culinary artistry meets health-conscious dining. I am an 𝐄𝐱𝐞𝐜𝐮𝐭𝐢𝐯𝐞 𝐂𝐡𝐞𝐟 𝐚𝐧𝐝 𝐭𝐡𝐞 𝐩𝐫𝐨𝐮𝐝 𝐅𝐨𝐮𝐧𝐝𝐞𝐫 𝐨𝐟 𝐍𝐮𝐭𝐫𝐢 𝐆𝐚𝐬𝐭𝐫𝐨, a culinary venture dedicated to crafting exceptional dining experiences. With a rich background in Culinary Arts spanning over two decades, I bring a passion for creating not only delicious but also nourishing and organic meals that foster connection and well-being.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 20),
            Text(
              '𝐀𝐛𝐨𝐮𝐭 𝐌𝐞:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'With a foundation built on the mastery gained from seven esteemed culinary mentors, I have honed a distinctive style in food plating and presentation. My journey includes contributing to the launch of various restaurants, fine dining establishments, and orchestrating culinary excellence at corporate events and celebrations.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 20),
            Text(
              '𝐌𝐢𝐬𝐬𝐢𝐨𝐧:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'At Nutri Gastro, our mission extends beyond gastronomic delight. We are committed to making a substantial impact on the food industry. Through our personal chef services, catering, and home meal prep, we offer a chef-forward approach that caters to diverse clientele across different sectors and occasions. Our commitment is to deliver high-quality, minimally processed, and locally sourced food coupled with exceptional hospitality and value.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 20),
            Text(
              '𝐕𝐢𝐬𝐢𝐨𝐧:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'I aspire to redefine culinary experiences by seamlessly blending culinary artistry with a health-focused philosophy. NutriGastro aims to be a trailblazer in providing culinary services that not only satiate the palate but also contribute to overall well-being.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 20),
            Text(
              'Join us on this gastronomic journey where each meal is a celebration of taste, health, and innovation. 𝐅𝐨𝐫 𝐚𝐥𝐥 𝐲𝐨𝐮𝐫 𝐜𝐚𝐭𝐞𝐫𝐢𝐧𝐠 𝐪𝐮𝐞𝐫𝐢𝐞𝐬 𝐚𝐧𝐝 𝐜𝐮𝐥𝐢𝐧𝐚𝐫𝐲 𝐝𝐫𝐞𝐚𝐦𝐬, 𝐟𝐞𝐞𝐥 𝐟𝐫𝐞𝐞 𝐭𝐨 𝐫𝐞𝐚𝐜𝐡 𝐨𝐮𝐭! 𝐂𝐨𝐧𝐭𝐚𝐜𝐭 𝐮𝐬, 𝐚𝐧𝐝 𝐥𝐞𝐭\'𝐬 𝐭𝐮𝐫𝐧 𝐲𝐨𝐮𝐫 𝐞𝐯𝐞𝐧𝐭 𝐢𝐧𝐭𝐨 𝐚 𝐠𝐚𝐬𝐭𝐫𝐨𝐧𝐨𝐦𝐢𝐜 𝐦𝐚𝐬𝐭𝐞𝐫𝐩𝐢𝐞𝐜𝐞.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 20),
            Text(
              '𝐌𝐲 𝐄𝐦𝐚𝐢𝐥: hakeem@nutrigastro.com',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 5),
            Text(
              '𝐏𝐡𝐨𝐧𝐞# +1 855 412 5099',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 5),
            Text(
              '𝐖𝐞𝐛𝐬𝐢𝐭𝐞: www.nutrigastro.com',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
