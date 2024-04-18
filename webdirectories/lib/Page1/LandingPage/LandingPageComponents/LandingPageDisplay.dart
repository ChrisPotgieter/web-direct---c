import 'package:flutter/material.dart';
import 'package:webdirectories/Page1/LandingPage/LandingPage.dart';
import 'package:webdirectories/Page1/LandingPage/LandingPageComponents/LandingPageTextButton.dart';
import 'package:webdirectories/Page1/LandingPage/LandingPageComponents/categorySelect.dart';
import 'package:webdirectories/Page1/LandingPage/LandingPageComponents/circleTextBox.dart';
import 'package:webdirectories/Page1/Page1.dart';
import 'package:webdirectories/Page2/Page2.dart';
import 'package:webdirectories/Page3/Page3.dart';
import 'package:webdirectories/Page4/Page4.dart';
import 'package:webdirectories/Page5/Page5.dart';
import 'package:webdirectories/myutility.dart';

List directoriesInfo = [
  {
    "1title": "Download ",
    "2title": "WATIF",
    "description":
        "Register and Download the FREE powerful App for all up-to-date info on Fuel-, Tow-, Repair-, and Services. At your fingertips, Saving Time and Money as you travel, nationwide."
  },
  {
    "1title": "TOWING",
    "2title": "Directory",
    "description":
        "Professional help and roadside assistance in an emergency. Or find any specialist service nationwide.  Read Reviews"
  },
  {
    "1title": "Fuel",
    "2title": "Directory",
    "description":
        "Locate and Navigate to the Nearest-, Cheapest-, or Specific Fuel Brand. Get fuel prices, rewards, coffee, food, toilets, shops, ATM’s and all other services nationwide. Read Reviews."
  },
  {
    "1title": "PANEL BEATER",
    "2title": "Directory",
    "description":
        "Find professional help nearby, or nationwide, for any type of repair, your vehicle brand, acceptable to your Insurance. Read Reviews."
  },
  {
    "1title": "AUTO REPAIR",
    "2title": "Directory",
    "description":
        "Locate qualified services nearby or nationwide, for service, spares, or specialist repairs. Read Reviews."
  },
];

class LandingPageDisPlay extends StatefulWidget {
  const LandingPageDisPlay({super.key});

  @override
  State<LandingPageDisPlay> createState() => _LandingPageDisPlayState();
}

class _LandingPageDisPlayState extends State<LandingPageDisPlay> {
  int menuIndex = 0;
//update menu index
  changeMenu(value) {
    setState(() {
      menuIndex = value;
    });
  }

//change page
  navigateToDifrentPage(page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/Glasses.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Image.asset(
                  'images/logo.png',
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
                      LandingPageTextButton(
                          onpress: () {
                            navigateToDifrentPage(Material(child: Page1()));
                          },
                          text: 'Home'),
                      LandingPageTextButton(
                          onpress: () {
                            navigateToDifrentPage(Material(child: Page3()));
                          },
                          text: 'Our Story'),
                      LandingPageTextButton(
                          onpress: () {
                            navigateToDifrentPage(Material(child: Page4()));
                          },
                          text: 'Watif'),
                      LandingPageTextButton(
                          onpress: () {
                            navigateToDifrentPage(Material(child: Page5()));
                          },
                          text: 'Articles'),
                      Spacer(),
                      LandingPageTextButton(
                          onpress: () {}, text: 'Get in Touch'),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: MyUtility(context).height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategorySelect(
                menuIndex: menuIndex,
                changeMenu: changeMenu,
              ),
              /*  Image.asset(
                'images/gauge.png',
                width: 450,
                height: 450,
              ),*/
              CircleTextBox(
                Title1: directoriesInfo[menuIndex]['1title'],
                Title2: directoriesInfo[menuIndex]['2title'],
                description: directoriesInfo[menuIndex]['description'],
                menuIndex: menuIndex,
              ),
              /* Image.asset(
                'images/textbox.png',
                width: 450,
                height: 450,
              ),*/
            ],
          )
        ],
      ),
    );
  }
}
