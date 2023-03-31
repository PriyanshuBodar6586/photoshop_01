import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoshop_01/const/const.dart';
import 'package:photoshop_01/controller/home_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CropTool extends StatefulWidget {
  const CropTool({Key? key}) : super(key: key);

  @override
  State<CropTool> createState() => _CropToolState();
}

class _CropToolState extends State<CropTool> {
  HomeController cnt = Get.put(HomeController());
  late YoutubePlayerController youtubePlayerController;
  @override
  void initState() {
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: 'voPOfyswsWg',
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
          "assets/image/crop.png",
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
            text("""1. Select the Crop tool in the Photoshop toolbar (W).
            
2. Draw a new cropping area or drag the corner and edge handles to specify the crop boundaries in your photo.""",
                12.sp,
                pClrColor: Colors.white, pTxtAlign: TextAlign.start),
            height(3.h),
            text(
              """Introduction to Crop Tool in Photoshop
            """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """The crop tool is nothing but selecting an area which we needed and removing the remaining area from the image; when we select an area, the remaining part will be transparent if we click to enter, the remaining deselected area will disappear, and the selected area will become full fame picture, we have some types of crops options Crop is used in every editing software’s like video editing and photo editing, in Photoshop it is used mostly for photo studio purpose, they crop the normal photos to passport and other photo sizes. We use crop mostly when we need to change the size of the images, and also if we think some part of the image is enough to our requirement, then we delete the rest with the help of crop tool; there is a lot of crop options which help us very much.
            """,
              12.sp,
              pClrColor: textColor,
              pFontWeight: FontWeight.w500,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """How to Use Crop Tool in Photoshop?
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
