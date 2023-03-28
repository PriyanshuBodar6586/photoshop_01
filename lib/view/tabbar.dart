import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photoshop_01/view/home_screen.dart';
import 'package:photoshop_01/view/intro.dart';
import 'package:photoshop_01/view/menu.dart';
import 'package:photoshop_01/view/options.dart';
import 'package:photoshop_01/view/panels.dart';
import 'package:photoshop_01/view/shortcuts.dart';

import 'interface.dart';

class Tabbars extends StatefulWidget {
  const Tabbars({Key? key}) : super(key: key);

  @override
  State<Tabbars> createState() => _TabbarsState();
}

class _TabbarsState extends State<Tabbars> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9, // length of tabs
      child: Scaffold(
        drawer: const Drawer(
        backgroundColor: Color(0xff191C2D),
          elevation: 30,
          shadowColor: Colors.white,
        ),
        backgroundColor: Colors.black,
        appBar: AppBar(

          backgroundColor: const Color(0xff191C2D),
          centerTitle: false,
          title: const Text("PhotoShop Guide"),
          actions: const [Icon(Icons.more_vert)],
          bottom: TabBar(
            indicator: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffDD294E),
                  width: 2,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
            isScrollable: true,
            indicatorWeight: 3,
            indicatorColor: const Color(0xffDD294E),
            labelColor: const Color(0xffDD294E),
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,

            labelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            tabs:  const [
              Tab(text: "Tools"),
              Tab(text: "Introduction"),
              Tab(text: "Interface"),
              Tab(text: "Options Bar"),
              Tab(text: "Menu Bar"),
              Tab(text: "Panels"),
              Tab(text: "Basic Work"),
              Tab(text: "Effacts"),
              Tab(text: "Shortcuts"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HomeScreen(),
            IntroScreen(),
            InterFace(),
            Options(),
            Menu(),
            Penels(),
            HomeScreen(),
            HomeScreen(),
            Shortcutss(),
          ],
        ),
      ),
    );
  }
}
