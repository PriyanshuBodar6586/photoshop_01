import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoshop_01/const/const.dart';
import 'package:photoshop_01/controller/home_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class Quick extends StatefulWidget {
  const Quick({Key? key}) : super(key: key);

  @override
  State<Quick> createState() => _QuickState();
}

class _QuickState extends State<Quick> {
  HomeController cnt = Get.put(HomeController());
  late YoutubePlayerController youtubePlayerController;
  @override
  void initState() {
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: 'M9_53MsE0Fg',
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
          body: toolTxt(  "assets/image/quick selection.png",
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
            text( """1. Select the Quick selection tool in the Photoshop toolbar (W).

2. Click on other areas inside the object to add them to your selection.

3. Click 'Edit' from the Menu Bar and then click 'Copy' once the entire object has been selected.
            """,12.sp, pClrColor: Colors.white, pTxtAlign: TextAlign.start),
            height(3.h),
            text(
              """Introduction to Quick Selection Tool in Photoshop
            """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """Quick Selection Tool is the essential piece of the Tool panel of Adobe Photoshop application and utilized for the selection of a specific segment of the raster object for altering purposes, and the tool is widely known for its time sparing element and precision with high-res raster pictures, the user can understand about the usage and application of Quick Selection Tool in making the erroneous task of selecting a particular part of an image with ease and save precious time.
            """,
              12.sp,
              pClrColor: textColor,
              pFontWeight: FontWeight.w500,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """How to Use Quick Selection Tool in Photoshop?
            """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """Click and drag over an area you want to select. The tool automatically selects similar tones and stops when it finds image edges. To add to the initial selection, just click and drag over another area. The Quick Selection tool automatically changes to the Add to selection option.
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
