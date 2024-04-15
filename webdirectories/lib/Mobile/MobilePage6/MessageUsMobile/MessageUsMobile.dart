import 'package:flutter/material.dart';
import 'package:webdirectories/Mobile/MobilePage6/MessageUsMobile/MessageUsMobimeComponent/ImNotaRobot.dart';
import 'package:webdirectories/Mobile/MobilePage6/MessageUsMobile/MessageUsMobimeComponent/MessageUsTextFieldMobile.dart';
import 'package:webdirectories/myutility.dart';

class MessageUsMobile extends StatefulWidget {
  const MessageUsMobile({super.key});

  @override
  State<MessageUsMobile> createState() => _MessageUsMobileState();
}

class _MessageUsMobileState extends State<MessageUsMobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Mesage Us',
          style: TextStyle(
              fontSize: 24,
              color: Color(0xFF0E1013),
              fontFamily: 'ralewaysemi'),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 2),
          child: Text(
            '*Please fill in required fields',
            style: TextStyle(
                fontFamily: 'ralewaymedium',
                fontSize: 14,
                color: Color.fromRGBO(0, 0, 0, 0.35)),
          ),
        ),
        Container(
          width: MyUtility(context).width / 1.2,
          height: MyUtility(context).height * 0.51,
          decoration: BoxDecoration(
              color: Color(0xFFF4F4F4),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 0,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
              borderRadius: BorderRadius.circular(10.0)),
          child: Column(
            children: [
              MessageUsTextFieldMobile(text: 'First Name*'),
              MessageUsTextFieldMobile(text: 'Last Name*'),
              MessageUsTextFieldMobile(text: 'Email*'),
              MessageUsTextFieldMobile(text: 'Phone*'),
              MessageUsTextFieldMobile(text: 'Message*'),
              SizedBox(
                height: MyUtility(context).height * 0.01,
              ),
              NotARobotContainer()
            ],
          ),
        ),
        SizedBox(
          height: MyUtility(context).height * 0.025,
        ),
        SizedBox(
          height: 40,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF0E1013),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text(
              'Submit Now ',
              style: TextStyle(
                  fontSize: 16, fontFamily: 'raleway', color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: MyUtility(context).height * 0.025,
        ),
      ],
    );
  }
}