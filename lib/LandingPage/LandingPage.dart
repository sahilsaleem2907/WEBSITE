import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:website_sept/social_icons.dart';
import 'package:website_sept/my_flutter_app_icons.dart';
import 'package:url_launcher/url_launcher.dart';



class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TypewriterAnimatedTextKit(
              speed: Duration(milliseconds: 200),
              totalRepeatCount: 1,
              repeatForever: true,
              pause: Duration(milliseconds: 150),
              text: [
                "Flutter developer",
                "Native App developer ",
                "Competitive Programming"
              ],
              textStyle: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "I set goals and devour them ",
                style: TextStyle(fontSize: 16.0, color: Colors.green),
              ),
            ),
            MaterialButton(
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () {
                _launchURLSpotify();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 20.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "My Spotify Profile ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      WidgetSpan(
                        child: Icon(Social.spotify, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RichText(
              text: TextSpan(
                children: [
                  WidgetSpan(
                    child: IconButton(
                      icon: Icon(Social.instagram),
                      tooltip: "Instagram",
                      onPressed: () {
                        _launchURLInstagram();
                      },
                      color: Colors.green,
                    ),
                  ),
                  TextSpan(text: '\t'),
                  WidgetSpan(
                    child: IconButton(
                      icon: Icon(MyFlutterApp.code),
                      tooltip: "CodeChef",
                      onPressed: () {
                        _launchURLFacebook();
                      },
                      color: Colors.green,
                    ),
                  ),
                  TextSpan(text: '\t'),
                  WidgetSpan(
                    child: IconButton(
                      icon: Icon(Social.linkedin),
                      tooltip: "Linkedin",
                      onPressed: () {
                        _launchURLLinkedin();
                      },
                      color: Colors.green,
                    ),
                  ),
                  TextSpan(text: '\t'),
                  WidgetSpan(
                    child: IconButton(
                      icon: Icon(Social.github),
                      tooltip: "Github",
                      onPressed: () {
                        _launchURLGithub();
                      },
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 100,
            ),
          ],
        ),
      ),
      SizedBox(
        width: 70,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 200.0),
        child: Image.asset(
          "assets/images/pic4.jpg",
          width: 300,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
  
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }

  _launchURLSpotify() async {
    String url = Uri.encodeFull(
        'https://open.spotify.com/user/21e47yz2uvaqgsl7jnypiya3q?si=2c464c94f2b4431a');
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLInstagram() async {
    String url = Uri.encodeFull('https://www.instagram.com/sahil.saleem_/');
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLFacebook() async {
    String url = Uri.encodeFull('https://www.codechef.com/users/keenphoenix');
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLLinkedin() async {
    String url =
        Uri.encodeFull('https://www.linkedin.com/in/sahil-saleem-338a06144/');
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLGithub() async {
    String url = Uri.encodeFull('https://github.com/sahilsaleem2907');
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
