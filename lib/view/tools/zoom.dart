import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoshop_01/const/const.dart';
import 'package:photoshop_01/controller/home_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class ZoomTool extends StatefulWidget {
  const ZoomTool({Key? key}) : super(key: key);

  @override
  State<ZoomTool> createState() => _ZoomToolState();
}

class _ZoomToolState extends State<ZoomTool> {
  HomeController cnt = Get.put(HomeController());
  late YoutubePlayerController youtubePlayerController;
  @override
  void initState() {
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: 'GFRJ23xynLY',
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
          body: toolTxt( "assets/image/Zom.png",
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
              text( """1. Select the Zoom Tool in the Photoshop toolbar.
            
2. Use the Options Bar to customize tool settings, like Fit screen, Fill Screen to get the effect you want.

3. The Zoom tool is one of Photoshop's handiest and most frequently used utilities.
            """, 12.sp, pClrColor: Colors.white, pTxtAlign: TextAlign.start),
              height(3.h),
              text(
                """Introduction to Zoom Tool in Photoshop
            """,
                16.sp,
                pClrColor: const Color(0xff0dd294e),
                pFontWeight: FontWeight.bold,
                pTxtAlign: TextAlign.start,
              ),
              height(3.h),
              text(
                """The Zoom tool is one of Photoshop’s handiest and most frequently used utilities. Each of Photoshop’s common tools can have a wide range of applications to your graphic projects. When you need to drill down for maximum precision in your project or step out for an overview, the Zoom tool can help you do exactly that.
            """,
                12.sp,
                pClrColor: textColor,
                pFontWeight: FontWeight.w500,
                pTxtAlign: TextAlign.start,
              ),
              height(3.h),
              text(
                """How to Use Zoom Tool in Photoshop?
            """,
                16.sp,
                pClrColor: const Color(0xff0dd294e),
                pFontWeight: FontWeight.bold,
                pTxtAlign: TextAlign.start,
              ),
              height(3.h),
              text(
                """You can zoom in to magnify your image up to 3,200 percent or zoom out to a minimum view of only 1 percent. While you'll rarely get anywhere near these extremes, you can see just how flexible and expansive the view options provided by the Zoom tool are. Higher percentages allow for less error when you draw with a tablet as well, allowing for more ornate detail. At the highest percentage, you'll see your image pixel by pixel, which is fantastic for those who design game sprites. You can use the Zoom tool to zoom out afterward and better observe the overall effect you're having on the overall image.
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
