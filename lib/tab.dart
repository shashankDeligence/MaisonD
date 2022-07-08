import 'package:flutter/material.dart';
import 'package:task/animation.dart';
import 'package:task/home.dart';
import 'package:task/settings.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Maison D Auraine'),
              bottom: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.home), text: "Home"),
                  Tab(icon: Icon(Icons.animation), text: "Animation"),
                  Tab(icon: Icon(Icons.settings), text: "Settings"),
                ],
              ),
            ),
            body: const TabBarView(
              children: [
                Home(),
                AnimationUI(),
                Settings(),
              ],
            ),
          )),
    );
  }
}
