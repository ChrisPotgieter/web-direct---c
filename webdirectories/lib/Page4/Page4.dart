import 'package:flutter/material.dart';
import 'package:webdirectories/Page4/DownloadWatif/DownloadWatif.dart';
import 'package:webdirectories/Footer/Footer.dart';
import 'package:webdirectories/TopNavBar/TopNavBar.dart';
import 'package:webdirectories/Page4/Watif/Watif.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [TopNavBar(), Watif(), DownloadWatif()],
      ),
    );
  }
}