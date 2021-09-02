import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "A little bit about me ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.green),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "Hi , I'am Sahil Saleem and this is my website .\n\nIf you didn't already know, what your looking at is one of my flutter endevours . I find that I enjoy creating application to help people solve a problem , I needed a website to show my skills and here it is , problem solved.\n\nAlong with this hobby of mine I also do competitive coding as it is fundamentally problem solving. I endulge on elon musk's twitter from time to time and I occasionally dont mind slurping a cup of coffee to finish something interesting.\n\nI also love music and you probably got that hint from the first page, never mind. I also keep my legs dipped in crypto and all that jazz, but probably best not to take any financial advice from me.\n\n If you find me to be an average human being , check out my portfolio.",
                style: TextStyle(fontSize: 16.0, color: Colors.green),
              ),
            ),
            SizedBox(
              height: 30,
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
          "assets/images/pic2.jpg",
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
}
