import 'package:flutter/material.dart';
import 'package:webdirectories/Mobile/MobilePage1/MobilePage1.dart';
import 'package:webdirectories/Mobile/MobilePage2/MobilePage2.dart';
import 'package:webdirectories/Mobile/MobilePage3/MobilePage3.dart';
import 'package:webdirectories/Mobile/MobilePage4/MobilePage4.dart';
import 'package:webdirectories/Mobile/MobilePage5/MobilePage5.dart';
import 'package:webdirectories/Mobile/MobilePage6/MobilePage6.dart';
import 'package:webdirectories/myutility.dart';

class MobileTopNavBar extends StatefulWidget {
  const MobileTopNavBar({Key? key}) : super(key: key);

  @override
  State<MobileTopNavBar> createState() => _MobileTopNavBarState();
}

class _MobileTopNavBarState extends State<MobileTopNavBar> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 250,
          height: 100,
          child: Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              'images/logow.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(width: 10),
        PopupMenuButton(
          icon: Icon(
            Icons.menu,
            size: 40,
          ),
          itemBuilder: (BuildContext context) {
            return [
              buildPopupMenuItem('Home', 'option1', MobilePage1()),
              buildPopupMenuItem('Our Story', 'option2', MobilePage2()),
              buildPopupMenuItem('Watif', 'option3', MobilePage3()),
              buildPopupMenuItem('Articles', 'option4', MobilePage4()),
              buildPopupMenuItem('Get in Touch', 'option5', MobilePage6()),
            ];
          },
          onSelected: (value) {
            setState(() {
              selectedOption = value as String?;
            });
          },
        ),
      ],
    );
  }

  PopupMenuItem<String> buildPopupMenuItem(
      String text, String value, Widget route) {
    final isSelected = selectedOption == value;
    return PopupMenuItem(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Material(
                      child: route,
                    )));
      },
      value: value,
      child: Container(
        width: MyUtility(context).width,
        color: isSelected
            ? Color(0xFFebebeb).withOpacity(0.05)
            : Color(0xFFebebeb).withOpacity(0.05),
        child: ListTile(
          title: Text(
            text,
            style: TextStyle(
                color: Colors.black, fontFamily: 'raleway', fontSize: 18),
          ),
        ),
      ),
    );
  }
}
