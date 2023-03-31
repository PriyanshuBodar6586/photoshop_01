import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoshop_01/const/const.dart';
import 'package:photoshop_01/controller/home_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class EraserTool extends StatefulWidget {
  const EraserTool({Key? key}) : super(key: key);

  @override
  State<EraserTool> createState() => _EraserToolState();
}

class _EraserToolState extends State<EraserTool> {
  HomeController cnt = Get.put(HomeController());
  late YoutubePlayerController youtubePlayerController;
  @override
  void initState() {
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: 'bCHvRmAB6hs',
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
        body: toolTxt(
          "assets/image/eraser.png",
          [ YoutubePlayer(
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
            text("""1. Select the Eraser tool in the Photoshop toolbar (E).
            
2. Use the Options Bar to customize tool settings, like Mode, Flow & opacity to get the effect you want.

3. This is a regular or default process of using the eraser in Photoshop to remove unwanted pixels in the image.
            """, 12.sp, pClrColor: Colors.white, pTxtAlign: TextAlign.start),
            height(3.h),
            text(
              """Introduction to Eraser Tool in Photoshop
            """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """we are going to look after the erasing tool in Photoshop. Upon undoing, the last edit completely gets removed, but we need part of the edit to retain in the image; then, we can use this erase for multiple proposes of removing minor or small things or decrease their opacity of objects from the frame, which based on the requirements of output.
            """,
              12.sp,
              pClrColor: textColor,
              pFontWeight: FontWeight.w500,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """How to Use Eraser Tool in Photoshop?
            """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """This is a regular or default process of using the eraser in Photoshop to remove unwanted pixels in the image. Upon erasing the image portion, it becomes transparent, and the pixels will be removed on the areas of brush movement. By doing this, the background image can be shown if we have multiple layers, make the image transparent where required and small or large portions of objects can be removed from the image which is not needed and use the clown stamp tool or other images to cover it.
            """,
              12.sp,
              pClrColor: textColor,
              pFontWeight: FontWeight.w500,
              pTxtAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
