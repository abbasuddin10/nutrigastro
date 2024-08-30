import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'another page/ProfilePage.dart';
import 'another page/social_media.dart';
import 'drawer file/Feedback Page.dart';
import 'drawer file/Help & Support Page.dart';
import 'drawer file/Privacy_Policy_Page.dart';
import 'drawer file/Terms of Service Page.dart';
import 'drawer file/about.dart';
import 'drawer file/contact me.dart';
import 'drawer file/send meaasege.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; // Track the selected index

  final List<String> imgList = [
    'assets/images/ads1.jpg',
    'assets/images/ads2.jpg',
    'assets/images/ads3.jpg',
  ];

  final List<String> imgDescriptions = [
    "Melinda's Brand Ad",
    "Healthy Living Campaign",
    "New Product Launch",
  ];

  final List<String> urlList = [
    'https://nutrigastro.com/services/',
    'https://nutrigastro.com/order-online/',
    'https://shop.nutrigastro.com/',
    'https://nutrigastro.com/corporate-lunch-catering-san-francisco/',
    'https://nutrigastro.com/blog/',
    'https://nutrigastro.com/about-us/',
  ];

  final List<String> buttonImageList = [
    'assets/images/services.png',
    'assets/images/blog.jpeg',
    'assets/images/chef.png',
    'assets/images/corporate.png',
    'assets/images/shop.png',
    'assets/images/about.png',
  ];

  final List<String> buttonNameList = [
    'Services',
    'Order Online',
    'Our Shop',
    'Corporate',
    'Blog',
    'About Us',
  ];

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _onBottomNavBarTap(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 1) {
      _launchURL(
          'https://www.yelp.com/biz/nutrigastro-san-francisco?osq=nutrigastro&override_cta=Request+pricing+%26+availability');
    } else if (index == 2) {
      Navigator.of(context).push(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              SocialMediaPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.easeInOut;
            var tween = Tween(begin: begin, end: end);
            var offsetAnimation =
                animation.drive(tween.chain(CurveTween(curve: curve)));
            return SlideTransition(position: offsetAnimation, child: child);
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'NutriGastro',
          style: TextStyle(
            fontSize: 24, // Font size
            fontWeight: FontWeight.bold, // Font weight
            color: Colors.white, // Text color
            letterSpacing: 1.5, // Spacing between letters
            shadows: [
              Shadow(
                offset: Offset(2, 2), // Shadow offset
                blurRadius: 4, // Shadow blur radius
                color:
                    Colors.black.withOpacity(0.5), // Shadow color and opacity
              ),
            ],
          ),
        ),
        backgroundColor: Colors.teal, // AppBar background color
        elevation: 4, // Shadow under the AppBar
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Centers the content vertically
                crossAxisAlignment: CrossAxisAlignment
                    .center, // Centers the content horizontally
                children: <Widget>[
                  CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('assets/images/profile.jpeg'),
                  ),
                  SizedBox(height: 2.0),
                  Flexible(
                    child: Text(
                      'Hakeem (Chef Hak) Otenigbagbe',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow:
                          TextOverflow.ellipsis, // Ensures long text is handled
                      textAlign: TextAlign.center, // Centers the text
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Flexible(
                    child: Text(
                      'hakeem@nutrigastro.com',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14.0,
                      ),
                      overflow:
                          TextOverflow.ellipsis, // Ensures long text is handled
                      textAlign: TextAlign.center, // Centers the text
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.blueAccent),
              title: Text('About me'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutMePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.text_format, color: Colors.blueAccent),
              title: Text('Sent Message'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SendMessagePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.account_box, color: Colors.blueAccent),
              title: Text('Contact me'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactMePage()),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.developer_board, color: Colors.redAccent),
              title: Text('Developer'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.privacy_tip, color: Colors.blueAccent),
              title: Text('Privacy Policy'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PrivacyPolicyPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.rule, color: Colors.blueAccent),
              title: Text('Terms of Service'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TermsOfServicePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.help_outline, color: Colors.blueAccent),
              title: Text('Help & Support'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HelpSupportPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.feedback, color: Colors.blueAccent),
              title: Text('Feedback'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FeedbackPage()),
                );
              },
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 154, 186, 240),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(seconds: 2),
                onPageChanged: (index, reason) {},
              ),
              items: imgList
                  .asMap()
                  .entries
                  .map((entry) => ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Image.asset(
                              entry.value,
                              fit: BoxFit.cover,
                              width: 1000,
                            ),
                            Positioned(
                              bottom: 20.0,
                              left: 20.0,
                              right: 20.0,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 20.0),
                                color: Colors.black.withOpacity(0.5),
                                child: Text(
                                  imgDescriptions[entry.key],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0, // Space between columns
                mainAxisSpacing: 10.0, // Space between rows
                children: List.generate(6, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(
                        8.0), // Adds padding inside each button
                    child: GestureDetector(
                      onTap: () => _launchURL(urlList[index]),
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                buttonImageList[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10.0,
                            left: 10.0,
                            child: Container(
                              color: Colors.black54,
                              padding: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 10.0),
                              child: Text(
                                buttonNameList[index],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Reviews',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.share),
            label: 'Social',
          ),
        ],
        currentIndex: _selectedIndex,
        //selectedItemColor: Colors.tealflutter build appbundle[800],
        onTap: _onBottomNavBarTap,
      ),
    );
  }
}
