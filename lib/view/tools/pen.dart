import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoshop_01/const/const.dart';
import 'package:photoshop_01/controller/home_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class PenTool extends StatefulWidget {
  const PenTool({Key? key}) : super(key: key);

  @override
  State<PenTool> createState() => _PenToolState();
}

class _PenToolState extends State<PenTool> {
  HomeController cnt = Get.put(HomeController());
  late YoutubePlayerController youtubePlayerController;
  @override
  void initState() {
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: 'oMICkvC7Byc',
      flags: const YoutubePlayerFlags(autoPlay: false, loop: true,),
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => back(),
      child: Scaffold(
          backgroundColor: backGroundColor,
          body: toolTxt( "assets/image/pen.png",
            [
              YoutubePlayer(
                aspectRatio: 16 / 9,
                progressIndicatorColor: Colors.redAccent,
                progressColors: const ProgressBarColors(
                  bufferedColor: Colors.grey,
                  backgroundColor: Colors.white38,
                  playedColor: Colors.red,
                  handleColor: Colors.red,
                ),
                controller: youtubePlayerController,
              ),
              height(3.h),
            text( """1. Select the Pen tool in the Photoshop toolbar (P).

2. Use the Options Bar to customize tool settings, like Range, Exposure to get the effect you want.

3. The Pen Tool in Photoshop creates paths and shapes which can be duplicated and manipulated to create complex selections, masks and objects.
            """, 12.sp, pClrColor: Colors.white, pTxtAlign: TextAlign.start),
            height(3.h),
            text(
              """Introduction to Pen Tool in Photoshop
            """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """The Pen Tool in Photoshop creates paths and shapes which can be duplicated and manipulated to create complex selections, masks and objects.
Unlike the Brush Tool and Pencil Tools, which “draw” pixels onto your image, the Pen Tool always creates a vector path when used. These paths appear as either Work Paths or Shape Paths in the Paths Panel.
            """,
              12.sp,
              pClrColor: textColor,
              pFontWeight: FontWeight.w500,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """How to Use Pen Tool in Photoshop?
            """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """The standard Pen Tool allows you to create straight and curved paths with amazing accuracy, but mastering it takes some practice. Don’t get discouraged if it's difficult at first. You can always adjust a path after you create it.
To create a path that you can then use as a selection, choose the standard Pen Tool, and then choose Path in the options bar drop-down menu at the top of the application window.
            """,
              12.sp,
              pClrColor: textColor,
              pFontWeight: FontWeight.w500,
              pTxtAlign: TextAlign.start,
            ),
          ],





          )
      ),
    );
  }
}
