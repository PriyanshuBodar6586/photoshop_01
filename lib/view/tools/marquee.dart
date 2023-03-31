import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoshop_01/const/const.dart';
import 'package:photoshop_01/controller/home_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MarqueeTool extends StatefulWidget {
  const MarqueeTool({Key? key}) : super(key: key);

  @override
  State<MarqueeTool> createState() => _MarqueeToolState();
}

class _MarqueeToolState extends State<MarqueeTool> {
  HomeController cnt = Get.put(HomeController());
  late YoutubePlayerController youtubePlayerController;
  @override
  void initState() {
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: 'MFEg5RMX7QQ',
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
          "assets/image/marquee.png",
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
            text("""1. Select the marquee tool in the Photoshop toolbar (M).
            
2. It's the second, Next to the move tool.

3. Select an area of the image to work with. Position the mouse where you want to begin the selection and click the left mouse button, holding it down while you drag the selection to the desired size.
            """, 12.sp, pClrColor: Colors.white, pTxtAlign: TextAlign.start),
            height(3.h),
            text(
              """Introduction to marquee tool in Photoshop
            """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """Marquee tool is the basic selection tool that can select your Photoshop layer in several shapes, like rectangle, ellipse, single-pixel vertical and horizontal line, square, and circle, etc. By default, the marquee tool makes the rectangular selection.
            """,
              12.sp,
              pClrColor: textColor,
              pFontWeight: FontWeight.w500,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """How to Use marquee tool in Photoshop?
            """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """You can use the Photoshop marquee tool to select areas of an image that you can then copy, cut, or crop. It can also isolate sections of a graphic to apply a filter or effect to a particular area. Marquee selections also mark out boundaries for stroke and fill commands to create shapes and lines.
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
