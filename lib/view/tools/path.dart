import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoshop_01/const/const.dart';
import 'package:photoshop_01/controller/home_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PathTool extends StatefulWidget {
  const PathTool({Key? key}) : super(key: key);

  @override
  State<PathTool> createState() => _PathToolState();
}

class _PathToolState extends State<PathTool> {
  HomeController cnt = Get.put(HomeController());
  late YoutubePlayerController youtubePlayerController;
  @override
  void initState() {
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: 'gwIl7g3-h2o',
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
          "assets/image/path.png",
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
            text(
                """1. Select the Path Selection Tool in the Photoshop toolbar (A).

2. Use the Options Bar to customize tool settings, like Fill, Stock to get the effect you want.

3. The path selection tool can be utilized to select a whole path or sub path.""",
                12.sp,
                pClrColor: Colors.white,
                pTxtAlign: TextAlign.start),
            height(3.h),
            text(
              """Introduction to Path Selection Tool in Photoshop
""",
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """Photoshop offers a suite of vector path drawing tools that work in the same way as the pen path tools located in Adobe Illustrator as well as various other programs that allow you to draw vector paths. If you are coming close to Photoshop for the first time as well as have never any type of experience using vector path illustration tools, after that the Photoshop path tools may need some obtaining made use of to.
""",
              12.sp,
              pClrColor: textColor,
              pFontWeight: FontWeight.w500,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """How to Use Path Selection Tool in Photoshop?
""",
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """The path selection tool can be utilized to select a whole path or sub path. If you have a path that shows up in a Photoshop document, marquee drag or click with the path selection tool to pick a path and this will make all the anchor points become active. You could tell if the anchor points have actually been made active because they will look like filled squares. When all the points have actually been active, you can utilize the path selection tool to reposition a path, or make use of the key-board arrow keys to nudge the path position. Note that the combination of the Command + Option/Control + Alt keys could also be made use of to change the pen tool to the path selection tool.
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
