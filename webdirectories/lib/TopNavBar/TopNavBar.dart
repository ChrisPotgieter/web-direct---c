import 'package:flutter/material.dart';
import 'package:webdirectories/Page1/LandingPage/LandingPage.dart';
import 'package:webdirectories/Page3/OurStory/OurSotryComponents/OurStoryTextButton.dart';
import 'package:webdirectories/Page3/OurStory/OurSotryComponents/OvalTextButton.dart';
import 'package:webdirectories/Page3/Page3.dart';
import 'package:webdirectories/Page4/Page4.dart';
import 'package:webdirectories/Page5/Page5.dart';
import 'package:webdirectories/Page7/Page7.dart';
import 'package:webdirectories/myutility.dart';
import 'package:webdirectories/Page1/Page1.dart';

class TopNavBar extends StatefulWidget {
  const TopNavBar({Key? key}) : super(key: key);

  @override
  State<TopNavBar> createState() => _TopNavBarState();
}

class _TopNavBarState extends State<TopNavBar> {
  //change page
  navigateToDifrentPage(page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset(
            'images/logow.png',
            width: 200,
            height: 120,
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: SizedBox(
            width: MyUtility(context).width * 0.3,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OurStoryTextButton(
                    onpress: () {
                      navigateToDifrentPage(Material(child: Page1()));
                    },
                    text: 'Home'),
                OurStoryTextButton(
                    onpress: () {
                      navigateToDifrentPage(Material(child: Page3()));
                    },
                    text: 'Our Story'),
                OurStoryTextButton(
                    onpress: () {
                      navigateToDifrentPage(Material(child: Page4()));
                    },
                    text: 'Watif'),
                OurStoryTextButton(
                    onpress: () {
                      navigateToDifrentPage(Material(child: Page5()));
                    },
                    text: 'Articles'),
                Spacer(),
                OvalTextButton(
                    text: 'Get in Touch',
                    onPressed: () {
                      navigateToDifrentPage(Material(child: Page7()));
                    })
              ],
            ),
          ),
        ),
      ],
    );
  }
}
