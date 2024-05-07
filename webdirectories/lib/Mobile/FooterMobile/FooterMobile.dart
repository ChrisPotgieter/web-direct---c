import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webdirectories/Mobile/FooterMobile/FooterMobileComponents/FooterMobileTextButton.dart';
import 'package:webdirectories/myutility.dart';

class FooterMobile extends StatefulWidget {
  const FooterMobile({super.key});

  @override
  State<FooterMobile> createState() => _FooterMobileState();
}

class _FooterMobileState extends State<FooterMobile> {
  final email = TextEditingController();

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not launch $url')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 410,
      decoration: BoxDecoration(
        color: Color(0xFF0E1013),
      ),
      child: Column(
        children: [
          SizedBox(
            height: MyUtility(context).height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MyUtility(context).width / 2.2,
                height: MyUtility(context).height * 0.1,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    'images/logo.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Pages',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'ralewaysemi',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  FooterMobileTextButton(text: 'Home', onpress: () {}),
                  FooterMobileTextButton(text: 'Our Story', onpress: () {}),
                  FooterMobileTextButton(text: 'Watif', onpress: () {}),
                  FooterMobileTextButton(text: 'Articles', onpress: () {}),
                  FooterMobileTextButton(text: 'Contact Us', onpress: () {}),
                  FooterMobileTextButton(text: 'Disclaimer', onpress: () {}),
                ],
              ),
            ],
          ),
          SizedBox(
            height: MyUtility(context).height * 0.02,
          ),
          Text(
            'Subscribe to Newsletter',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'ralewaysemi',
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: MyUtility(context).height * 0.01,
          ),
          SizedBox(
            width: MyUtility(context).width / 1.5,
            height: 50,
            child: TextFormField(
              controller: email,
              style: TextStyle(
                color: Color(0xFF0C0C0C).withOpacity(0.55),
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                labelText: 'Enter your email here',
                labelStyle: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Raleway',
                  color: Colors.black,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                suffixIcon: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 20),
            child: Container(
              width: MyUtility(context).width - 20,
              height: 1.0,
              color: Colors.white.withOpacity(0.5),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    'images/CC.svg',
                    width: 14,
                    height: 14,
                  ),
                  Text(
                    ' 2024 Copyright',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'raleway',
                      color: Color(0xFFF4F4F4),
                    ),
                  ),
                  Text(
                    'Web Directories',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'ralewaysemi',
                      color: Color(0xFFF4F4F4),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Image.asset(
                      'images/logos_facebook.png',
                      height: 35,
                      width: 35,
                    ),
                    onPressed: () {
                      _launchURL('https://www.facebook.com/WDirectories/');
                    },
                  ),
                  IconButton(
                    icon: Image.asset(
                      'images/Group.png',
                      height: 35,
                      width: 35,
                    ),
                    onPressed: () {
                      _launchURL(
                          'https://www.linkedin.com/company/web-directories/about/');
                    },
                  ),
                  IconButton(
                    icon: Image.asset(
                      'images/skill-icons_instagram.png',
                      height: 35,
                      width: 35,
                    ),
                    onPressed: () {
                      _launchURL('https://www.instagram.com/webdirectories/');
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
