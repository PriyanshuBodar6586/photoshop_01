// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:photoshop_01/const/const.dart';
import 'package:photoshop_01/controller/home_controller.dart';
import 'package:photoshop_01/view/tools/blur.dart';
import 'package:photoshop_01/view/tools/brush.dart';
import 'package:photoshop_01/view/tools/clone.dart';
import 'package:photoshop_01/view/tools/crop.dart';
import 'package:photoshop_01/view/tools/dodge.dart';
import 'package:photoshop_01/view/tools/eraser.dart';
import 'package:photoshop_01/view/tools/eye.dart';
import 'package:photoshop_01/view/tools/gradient.dart';
import 'package:photoshop_01/view/tools/hand.dart';
import 'package:photoshop_01/view/tools/history.dart';
import 'package:photoshop_01/view/tools/lasso.dart';
import 'package:photoshop_01/view/tools/marquee.dart';
import 'package:photoshop_01/view/tools/move.dart';
import 'package:photoshop_01/view/tools/path.dart';
import 'package:photoshop_01/view/tools/pen.dart';
import 'package:photoshop_01/view/tools/quick.dart';
import 'package:photoshop_01/view/tools/rectangle.dart';
import 'package:photoshop_01/view/tools/spot.dart';
import 'package:photoshop_01/view/tools/type.dart';
import 'package:photoshop_01/view/tools/zoom.dart';
import 'package:sizer/sizer.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController cnt = Get.put(HomeController());
  int i = 0;

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
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "AdS",
                ),
              );
            } else {
              return InkWell(
                onTap: () {
                  print(index);
                   setState(
                         () {
                       if (index == 1) {
                         i = 1;
                         Timer(const Duration(milliseconds: 600), () {
                           Get.to(const BlurTool());
                         });
                       } else if (index == 2) {
                         i = 2;
                         Timer(const Duration(milliseconds: 600), () {
                           Get.to(const BrushTool());
                         });
                       } else if (index == 3) {
                         i = 3;
                         Timer(const Duration(milliseconds: 600), () {
                           Get.to(const CloneTool());
                         });
                       } else if (index == 4) {
                         i = 4;
                         Timer(const Duration(milliseconds: 600), () {
                           Get.to(const CropTool());
                         });
                       } else if (index == 6) {
                         i = 6;
                         Timer(const Duration(milliseconds: 600), () {
                           Get.to(const DodgeTool());
                         });
                       } else if (index == 7) {
                         i = 7;
                         Timer(const Duration(milliseconds: 600), () {
                           Get.to(const EraserTool());
                         });
                       } else if (index == 8) {
                         i = 8;
                         Timer(const Duration(milliseconds: 600), () {
                           Get.to(const EyeTool());
                         });
                       } else if (index == 9) {
                         i = 9;
                         Timer(const Duration(milliseconds: 600), () {
                           Get.to(const GradientTool());
                         });
                       } else if (index == 11) {
                         i = 11;
                         Timer(const Duration(milliseconds: 600), () {
                           Get.to(const HandTool());
                         });
                       } else if (index == 12) {
                         i = 12;
                         Timer(const Duration(milliseconds: 600), () {
                           Get.to(const HistoryTool());
                         });
                       } else if (index == 13) {
                         i = 13;
                         Timer(const Duration(milliseconds: 600), () {
                           Get.to(const LassoTool());
                         });
                       } else if (index == 14) {
                         i = 14;
                         Timer(const Duration(milliseconds: 600), () {
                           Get.to(const MarqueeTool());
                         });
                       } else if (index == 16) {
                         i = 16;
                         Timer(const Duration(milliseconds: 600), () {
                           Get.to(const MoveTool());
                         });
                       } else if (index == 17) {
                         i = 17;
                         Timer(const Duration(milliseconds: 600), () {
                           Get.to(const PathTool());
                         });
                       } else if (index == 18) {
                         i = 18;
                         Timer(const Duration(milliseconds: 600), () {
                           Get.to(const PenTool());
                         });
                       } else if (index == 19) {
                         i = 19;
                         Timer(const Duration(milliseconds: 600), () {
                           Get.to(const Quick());
                         });
                       } else if (index == 21) {
                         i = 21;
                         Timer(const Duration(milliseconds: 600), () {
                           Get.to(const RectangleTool());
                         });
                       } else if (index == 22) {
                         i = 22;
                         Timer(const Duration(milliseconds: 600), () {
                           Get.to(const SpotTool());
                         });
                       } else if (index == 23) {
                         i = 23;
                         Timer(const Duration(milliseconds: 600), () {
                           Get.to(const TypeTool());
                         });
                       } else {
                         i = 24;
                         Timer(const Duration(milliseconds: 600), () {
                           Get.to(const ZoomTool());
                         });
                       }
                     },
                   );
                },
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "${cnt.image[index]}",
                      fit: BoxFit.fill,
                    ),
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