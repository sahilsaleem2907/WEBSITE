import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:website_sept/widgets.dart';
import 'package:slimy_card/slimy_card.dart';

class PortfolioPage extends StatelessWidget {
  BuildContext _context;
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: MediaQuery. of(_context). size. width-100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            heightSpacer(20.0),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 200.0),
              child: buildCardList(_context),
            ),
          ],
        ),
      ),
    ];
  }

  

  @override
  Widget build(BuildContext context) {
    _context = context;
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
