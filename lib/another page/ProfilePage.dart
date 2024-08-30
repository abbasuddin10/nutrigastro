import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('assets/images/cover2.jpg'), // Cover image
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 40,
                  child: CircleAvatar(
                    radius: 75,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage(
                          'assets/images/profile22.jpg'), // Profile image
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Abbas Uddin',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          const url =
                              'https://www.linkedin.com/in/abbasuddin10/'; // Replace with your LinkedIn profile URL
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue, // Background color
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15), // Adjust size
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // Rounded corners
                          ),
                        ),
                        child: Text(
                          'Hire Me',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold, // Font size and weight
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () async {
                          const email = 'mailto:abbas.zhsust@gmail.com';
                          if (await canLaunch(email)) {
                            await launch(email);
                          } else {
                            throw 'Could not launch $email';
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.green, // Background color
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15), // Adjust size
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // Rounded corners
                          ),
                        ),
                        child: Text(
                          'Send Mail',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold, // Font size and weight
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),
                  // Your Identity Section

                  SizedBox(height: 10),
                  IdentityItem(
                      title: 'About Me',
                      description:
                          'As a dedicated Flutter developer with a degree in Computer Science and Engineering (CSE) from a reputed university in Bangladesh, I specialize in creating high-quality, innovative mobile applications. My extensive experience with Flutter has allowed me to successfully complete numerous projects, showcasing my proficiency in building user-friendly and efficient apps. My strong technical background and hands-on expertise in Flutter development enable me to deliver exceptional solutions that meet the highest standards in mobile app development.'),

                  SizedBox(height: 30),
                  // Projects Section
                  Text(
                    'Some Projects ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  ProjectGallery(), // Project images gallery
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IdentityItem extends StatelessWidget {
  final String title;
  final String description;

  IdentityItem({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            description,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}

class ProjectGallery extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/images/project1.png',
    'assets/images/project2.png',
    'assets/images/project3.png',
    'assets/images/project4.png',
  ]; // Add your image paths here

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1, // Adjust as needed
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        // childAspectRatio: 1,
      ),
      itemCount: imagePaths.length, // Number of project images
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePaths[index]),
              fit: BoxFit.contain,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        );
      },
    );
  }
}
