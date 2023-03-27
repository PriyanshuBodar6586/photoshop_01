// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:photoshop_01/const/const.dart';
import 'package:photoshop_01/controller/home_controller.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController cnt = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: backGroundColor,
      body: GridView.custom(
        gridDelegate: SliverStairedGridDelegate(
          tileBottomSpace: 0,
          pattern: const [
            StairedGridTile(1.0, 2.2),
            StairedGridTile(0.5, 0.9),
            StairedGridTile(0.5, 0.9),
            StairedGridTile(0.5, 0.9),
            StairedGridTile(0.5, 0.9),
          ],
        ),
        cacheExtent: 40,
        physics: const BouncingScrollPhysics(),
        childrenDelegate: SliverChildBuilderDelegate(
          childCount: cnt.image.length,
              (context, index) {
            if (cnt.image[index] == null) {
              return Container(
                  margin: const EdgeInsets.all(8),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text("Ads",));
            } else {
              return Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                   child: Image.asset(
                     "${cnt.image[index]}",
                     fit: BoxFit.cover,
                   ),

                ),
              );
            }
          },
        ),
      ),
    );
  }
}