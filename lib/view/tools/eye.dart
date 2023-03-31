import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoshop_01/const/const.dart';
import 'package:photoshop_01/controller/home_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class EyeTool extends StatefulWidget {
  const EyeTool({Key? key}) : super(key: key);

  @override
  State<EyeTool> createState() => _EyeToolState();
}

class _EyeToolState extends State<EyeTool> {
  HomeController cnt = Get.put(HomeController());
  late YoutubePlayerController youtubePlayerController;
  @override
  void initState() {
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: 'hvtzEaQBhBM',
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
          "assets/image/eye.png",
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
            text("""  1. Select the Eyedropper tool in the Photoshop toolbar (I).
            
2. se the Options Bar to customize tool settings, like Sample Size and Sample, to get the effect you want. Click on the color you want to sample.

3. The the sampled color will become the foreground color and will be added to your Swatches panel.
            """, 12.sp, pClrColor: Colors.white, pTxtAlign: TextAlign.start),
            height(3.h),
            text(
              """Introduction to Eye Dropper Tool in Photoshop
            """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """Eyedropper tool is a very useful tool used in Photoshop to get the precise color in the artwork; using the eyedropper tool, the users can match a particular object color to the new object just by dropping the tool on to the source object, and it makes the task effortless and quick even if you do not know the color value; also users can employ the Eyedropper to assign that detailed shadow to the color palette when they link a print that is already available in the file and can be used anywhere else in the image.
            """,
              12.sp,
              pClrColor: textColor,
              pFontWeight: FontWeight.w500,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """How to Use Eye Dropper Tool in Photoshop?
            """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """Select the Crop tool in the Photoshop toolbox (also known as the Tools bar). Its icon looks like two intersecting right angles. To locate it quickly, just press the letter C on your keyboard. To make a crop selection, hold down the left mouse button and drag a rectangle across the image.
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
