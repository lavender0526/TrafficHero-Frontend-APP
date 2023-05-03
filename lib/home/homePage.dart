
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test123/function/cms.dart';
import 'package:test123/function/group.dart';
import 'package:test123/function/home.dart';
import 'package:test123/function/setting.dart';
import 'package:test123/function/traficInfor.dart';

import '../navBar/navBar.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<homePage> {
  final List<BottomNavigationBarItem> bottonTabs = [
    const BottomNavigationBarItem(
        label: '首頁', icon: Icon(CupertinoIcons.home), tooltip: "首頁"),
    const BottomNavigationBarItem(
        label: '路況推播',icon: Icon(CupertinoIcons.arrow_branch),tooltip: "路況推播"),
    const BottomNavigationBarItem(
        label: '群組', icon: Icon(CupertinoIcons.group), tooltip: "群組"),
    const BottomNavigationBarItem(
        label: '道路資訊',icon: Icon(CupertinoIcons.bubble_left_bubble_right),tooltip: "道路資訊"),
    const BottomNavigationBarItem(
        label: '設定',icon: Icon(CupertinoIcons.settings),tooltip: "設定"),
  ];

  final List tabBodies = [
    home(),
    cms(),
    group(),
    trafficInfor(),
    setting(),
  ];

  int currentIndex = 0;
  var currentPage;

  @override
  void initState() {
    currentPage = tabBodies[currentIndex];
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(46, 117, 182, 1),
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: bottonTabs,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            currentPage = tabBodies[currentIndex];
          });
        },
      ),
      body: currentPage,
    );
  }
}
