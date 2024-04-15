import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:webdirectories/Page1/AiCoDriver/AiCoDriverComponents/AiCoDriverButton.dart';
import 'package:webdirectories/Page1/AiCoDriver/AiCoDriverComponents/LearnMoreButton.dart';
import 'package:webdirectories/Page4/DownloadWatif/DownloadWatifComponents/WatifLearnMoreButton.dart';
import 'package:webdirectories/myutility.dart';

class DownloadWatif extends StatefulWidget {
  const DownloadWatif({super.key});

  @override
  State<DownloadWatif> createState() => _DownloadWatifState();
}

class _DownloadWatifState extends State<DownloadWatif> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF0E1013),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MyUtility(context).height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MyUtility(context).width / 3.0,
                height: MyUtility(context).height * 0.7,
                child: Image.asset(
                  'images/coffeegirl.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: MyUtility(context).width / 2.8,
                height: MyUtility(context).height * 0.7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MyUtility(context).height * 0.06,
                    ),
                    Text(
                      "Download WATIF ™",
                      style: TextStyle(
                        fontSize: 48,
                        fontFamily: 'ralewaysemi',
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "for mahala, free, verniet...",
                      style: TextStyle(
                          fontSize: 38,
                          fontFamily: 'ralewaysemi',
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: MyUtility(context).height * 0.01,
                    ),
                    Text(
                      "Hit the road with confidence and ditch the stress! WATIF is your free, all-in-one automotive app that empowers you with everything you need.",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'raleway',
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: MyUtility(context).height * 0.04,
                    ),
                    Row(
                      children: [
                        AiCoDriverButton(
                            image: 'images/AppleStore.png', onpress: () {}),
                        AiCoDriverButton(
                            image: 'images/Google Play.png', onpress: () {}),
                      ],
                    ),
                    SizedBox(
                      height: MyUtility(context).height * 0.01,
                    ),
                    AiCoDriverButton(
                        image: 'images/WindowsStore.png', onpress: () {}),
                    SizedBox(
                      height: MyUtility(context).height * 0.02,
                    ),
                    WatifLearnMoreButton(
                        buttontext: 'Learn More', onpress: () {}),
                    SizedBox(
                      height: MyUtility(context).height * 0.01,
                    ),
                    Row(
                      children: [
                        Container(
                          width: MyUtility(context).width * 0.1,
                          height: 40,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/stars.png'),
                            ),
                          ),
                        ),
                        Container(
                          height: 22.5,
                          child: SvgPicture.asset(
                            'images/profileicon.svg',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: MyUtility(context).height * 0.05,
          )
        ],
      ),
    );
  }
}