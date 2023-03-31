import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoshop_01/const/const.dart';
import 'package:photoshop_01/controller/home_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SpotTool extends StatefulWidget {
  const SpotTool({Key? key}) : super(key: key);

  @override
  State<SpotTool> createState() => _SpotToolState();
}

class _SpotToolState extends State<SpotTool> {
  HomeController cnt = Get.put(HomeController());
  late YoutubePlayerController youtubePlayerController;
  @override
  void initState() {
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: '_gtvh-w25ps',
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
          "assets/image/sport.png",
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
                """1. Select the spot healing brush tool in the Photoshop toolbar (J).

2. Use the Options Bar to customize tool settings, like size, Hardness & pressure to get the effect you want.

3. For smaller areas: Simply click area you want to fix.
            """, 12.sp,
                pClrColor: Colors.white, pTxtAlign: TextAlign.start),
            height(3.h),
            text(
              """Introduction to Spot Healing Brush Tool in Photoshop
            """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """Healing Brush Tool is one of the most popular tools of this software. You can also do any type of editing work with the help of this tool. We generally use this tool for color correcting any image by taking the color sample from the same image, removing any object from an image, taking any object of an image, and placing it on other positions in the same image. This article will discuss the features and working of this tool and check out ‘How it can be used?’ in a different context with some examples.
            """,
              16.sp,
              pClrColor: const Color(0xFF0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """How to Use Spot Healing Brush Tool in Photoshop?
            """,
              12.sp,
              pClrColor: textColor,
              pFontWeight: FontWeight.w500,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """The spot healing brush is the default healing tool in Photoshop and can be used to clone areas from an image and blend the pixels from the sampled area seamlessly with the target area. The basic principle is that the texture from the sample area is blended with the color and luminosity surrounding wherever you paint. The main difference between this and the standard healing brush is that the spot healing brush requires no source point. You simply click on the blemishes you want to get rid of (or drag with the tool to paint over the larger areas you wish to repair) and the spot healing brush works out the rest for you. It is in many ways a lot easier to use than the standard healing brush and extremely effective at removing most blemishes and marks.
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
