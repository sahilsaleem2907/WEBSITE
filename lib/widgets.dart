import 'package:flutter/material.dart';
import 'package:slimy_card/slimy_card.dart';

Widget heightSpacer(double myHeight) {
  return SizedBox(
    height: myHeight,
  );
}

Widget buildCardList(BuildContext context) {
  return Container(
    color: Colors.transparent,
    height: 1000,
    width: double.infinity,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
           SlimyCard(
              // In topCardWidget below, imagePath changes according to the
              // status of the SlimyCard(snapshot.data).
              topCardWidget:topCardWidget("assets/images/logo2.png","SIAM-VIT","Project Head for 21-22") ,
              color: Colors.green,
              bottomCardWidget:bottomCardWidget("As the project head I was fortunate enough to help and guide more than 100 people , Questions such as how to approach a client , or a sponsor , or marketing was dealt with. Further I guided fuure app developers and distributed projects to the teams. But most importantly I learnt the skill to manage people") ,
            ),
            SizedBox(width: 50.0,),
            SlimyCard(
              // In topCardWidget below, imagePath changes according to the
              // status of the SlimyCard(snapshot.data).
              topCardWidget:topCardWidget("assets/images/codechef.png","Code Chef","") ,
              color: Colors.green,
              bottomCardWidget:bottomCardWidget("3 ⭐ on CodeChef as of September 2021") ,
            ),
             SizedBox(width: 50.0,),
            SlimyCard(
              // In topCardWidget below, imagePath changes according to the
              // status of the SlimyCard(snapshot.data).
              topCardWidget:topCardWidget("assets/images/leetcode.png","Leet Code","") ,
              color: Colors.green,
              bottomCardWidget:bottomCardWidget("2 ⭐ on LeetCode as of September 2021") ,
            ),
             SizedBox(width: 50.0,),
            SlimyCard(
              // In topCardWidget below, imagePath changes according to the
              // status of the SlimyCard(snapshot.data).
              topCardWidget:topCardWidget("assets/images/logo.png","Cab Rider","Android/iOS") ,
              color: Colors.green,
              bottomCardWidget:bottomCardWidget("A Flutter application that allows the user to request for a cab ride , the request will then go to a Firebase server from where a cab driver can accept the drive using an alernate driver app . Hence allowing an indivisual to travel more easier") ,
            ),
             SizedBox(width: 50.0,),
                 SlimyCard(
              // In topCardWidget below, imagePath changes according to the
              // status of the SlimyCard(snapshot.data).
              topCardWidget:topCardWidget("assets/images/ai.png","Face Detection","Android - Java") ,
              color: Colors.green,
              bottomCardWidget:bottomCardWidget("An android application that detects face's in any image using openCV and retrofit API , Images were stored on local machine and classifier was used from standard github docs.") ,
            ),
             SizedBox(width: 50.0,),
                    SlimyCard(
              // In topCardWidget below, imagePath changes according to the
              // status of the SlimyCard(snapshot.data).
              topCardWidget:topCardWidget("assets/images/weather.png","Weather Detection App","Android - Kotlin") ,
              color: Colors.green,
              bottomCardWidget:bottomCardWidget("An android application that using the weather api to show the weather data only using city as an input along with good UI") ,
            ),
             SizedBox(width: 50.0,),
      ],
    ),
  );
}


Widget topCardWidget(String imagePath , String title , String info) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 100,
          width: 200,
          child: Image.asset(imagePath),
        ),
        SizedBox(height: 15),
        Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        SizedBox(height: 15),
        Text(
          info,
          style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontSize: 12,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10),
      ],
    );
  }

  // This widget will be passed as Bottom Card's Widget.
  Widget bottomCardWidget(String desc) {
    return Text(
      desc,
      style: TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    );
  }



