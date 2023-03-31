import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:photoshop_01/const/const.dart';
import 'package:photoshop_01/controller/home_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class BlurTool extends StatefulWidget {
  const BlurTool({Key? key}) : super(key: key);

  @override
  State<BlurTool> createState() => _BlurToolState();
}

class _BlurToolState extends State<BlurTool> {
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
        body: toolTxt(
          "assets/image/blur.png",
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
            text("""          
1. Select the Blur tool in the Photoshop toolbar.

2. Use the Options Bar to customize tool settings, like Mode, Strength to get the effect you want.

3. The blur tool is also very useful for making images look softer and making the main subject stand out from the image.
            """, 12.sp, pClrColor: Colors.white, pTxtAlign: TextAlign.start),
            height(3.h),
            text(
              """Introduction to Blur Tool in Photoshop
                """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """Photoshop blur tool is one of the finest tools available in Photoshop for beautifying pictures. It can be useful for multiple scenarios such as blurring someone's face or blurring the secret information in your image graphics.
            """,
              12.sp,
              pClrColor: textColor,
              pFontWeight: FontWeight.w500,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """How to Use Blur Tool in Photoshop?
            """,
              16.sp,
              pClrColor: Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """
            The blur tool is also very useful for making images look softer and making the main subject stand out from the image. We can create some depth between fields in the image by blurring the objects.
The Blur tool can be found under the toolbox given at the left of the Photoshop workspace. It is located as a teardrop icon and grouped together with a sharpening and smudge tool. They are all grouped together because they are used for focusing and defocusing the objects in an image.
The Blur tool makes the object look fuzzy or out of focus. The cursor of the blur tool looks like a circle; we can make it bigger or smaller according to our requirements. To make the blur cursor smaller or bigger, press the left or right bracket keys. This shortcut key is also useful for increasing the size of the cursor of other tools.
There are few other tricks to blur an image, such as brush tools, quick selection, and layer masks that designers follow to focus an object in an image.
In this section, we will discuss the blur tool and other techniques to make an object blur and focus on standing out as the main object of the image.
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