import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main_files/ChatTab.dart';
import 'main_files/MainTab.dart';
import 'main_files/SettingsTab.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> _tabs = [
    const MainTab(),
    const SettingsTab(),
    const ChatTab()
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home)),
              BottomNavigationBarItem(icon: Icon(Icons.settings)),
              BottomNavigationBarItem(icon: Icon(Icons.chair)),
            ],
          ),
          tabBuilder: (BuildContext context, index) {
            return _tabs[index];
          }),
    );
  }
}
