import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoshop_01/const/const.dart';
import 'package:photoshop_01/controller/home_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class GradientTool extends StatefulWidget {
  const GradientTool({Key? key}) : super(key: key);

  @override
  State<GradientTool> createState() => _GradientToolState();
}

class _GradientToolState extends State<GradientTool> {
  HomeController cnt = Get.put(HomeController());
  late YoutubePlayerController youtubePlayerController;
  @override
  void initState() {
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: 'IY6nELyGkkk',
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
          "assets/image/gradint.png",
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
            text("""1. Select the Gradient tool in the Photoshop toolbar (G).
            
2. Use the Options Bar to customize tool settings, like Mode, Flow & opacity to get the effect you want.

3. A gradient is a gradual change in color that covers an image.
            """, 12.sp, pClrColor: Colors.white, pTxtAlign: TextAlign.start),
            height(3.h),
            text(
              """Introduction to Gradient Tool in Photoshop
            """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """A gradient is a gradual change in color that covers an image. This can occur throughout the whole image or just a portion of it. A gradient can be very subtle, such as a shadow, or it can be layered to make something that really pops. Gradients can also be linear, radial, angular, diamond or reflective.
Applying these types of gradients to images in Photoshop is simple if you know which tool to utilize. The Gradient tool comes with a variety of options to help you create gradient effects on any image.
            """,
              12.sp,
              pClrColor: textColor,
              pFontWeight: FontWeight.w500,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """How to Use Gradient Tool in Photoshop?
            """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """The Gradient tool is extremely easy to use, requiring little more than the sweep of a mouse. Most Photoshop users use the tool to apply creative blends to their images. It is helpful for making backgrounds for web pages as well as finding ways to help fill empty spaces or to signify transitions. More advanced users will utilize the tool to touch up images in particular spaces that may require more in-depth edits, such as landscape photos where the sky is washed out and needs more color.
You can use the tool to create different kinds of effects, such as linear gradients and diamond gradients. A linear gradient follows a line while a diamond gradient helps add a certain sparkle to an image. There are also transparent gradients, which allow parts of an image to be seen through the gradient.
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
