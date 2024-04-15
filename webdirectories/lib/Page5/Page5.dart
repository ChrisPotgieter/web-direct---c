import 'package:flutter/material.dart';
import 'package:webdirectories/Footer/Footer.dart';
import 'package:webdirectories/Page5/Productivity/Productivity.dart';
import 'package:webdirectories/Page5/RecentArticles/RecentAtricles.dart';
import 'package:webdirectories/TopNavBar/TopNavBar.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [TopNavBar(), Productivity(), RecentAtricles(), Footer()],
      ),
    );
  }
}