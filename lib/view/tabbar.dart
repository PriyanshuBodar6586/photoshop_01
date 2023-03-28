import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photoshop_01/view/home_screen.dart';

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
        drawer: Drawer(
        backgroundColor: Color(0xff191C2D),
          elevation: 30,
          shadowColor: Colors.white,
        ),
        backgroundColor: Colors.black,
        appBar: AppBar(

          backgroundColor: Color(0xff191C2D),
          centerTitle: false,
          title: Text("PhotoShop Guide"),
          actions: const [Icon(Icons.more_vert)],
          bottom: TabBar(
            indicator: BoxDecoration(
                border: Border.all(
                  color: Color(0xffDD294E),
                  width: 2,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
            isScrollable: true,
            indicatorWeight: 3,
            indicatorColor: Color(0xffDD294E),
            automaticIndicatorColorAdjustment: true,
            labelColor: Color(0xffDD294E),
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            tabs: const [
              Tab(text: "Tools"),
              Tab(text: "Introduction"),
              Tab(text: "Interface"),
              Tab(text: "OpenBar"),
              Tab(text: "MenuBar"),
              Tab(text: "Panels"),
              Tab(text: "Basic Work"),
              Tab(text: "Effacts"),
              Tab(text: "Shortcuts"),
            ],
          ),
        ),
        body: TabBarView(
          children: const [
            HomeScreen(),
            HomeScreen(),
            HomeScreen(),
            HomeScreen(),
            HomeScreen(),
            HomeScreen(),
            HomeScreen(),
            HomeScreen(),
            HomeScreen(),
          ],
        ),
      ),
    );
  }
}
