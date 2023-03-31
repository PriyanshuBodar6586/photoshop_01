import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoshop_01/const/const.dart';
import 'package:photoshop_01/controller/home_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DodgeTool extends StatefulWidget {
  const DodgeTool({Key? key}) : super(key: key);

  @override
  State<DodgeTool> createState() => _DodgeToolState();
}

class _DodgeToolState extends State<DodgeTool> {
  HomeController cnt = Get.put(HomeController());
  late YoutubePlayerController youtubePlayerController;
  @override
  void initState() {
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: 'AKoU7MCZu8A',
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
          "assets/image/Dodge.png",
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
            text("""1. Select the Dodge tool in the Photoshop toolbar (O).
            
2. Use the Options Bar to customize tool settings, like Range, Exposure to get the effect you want.

3. Photoshop Dodge and Burn tools is to first create an editing plan. You can do this by sketching out a line drawing of your photo and then deciding which areas you want to darken or lighten.
            """, 12.sp, pClrColor: Colors.white, pTxtAlign: TextAlign.start),
            height(3.h),
            text(
              """Introduction to Dodge Tool in Photoshop
            """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """The Photoshop Dodge and Burn tools replicate the darkroom techniques except they are more powerful and much easier to use. They also work equally as effective with colour photos so don’t restrict yourself to black and white.
            """,
              12.sp,
              pClrColor: textColor,
              pFontWeight: FontWeight.w500,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """How to Use Dodge Tool in Photoshop?
            """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """The best approach to using the Photoshop Dodge and Burn tools is to first create an editing plan. You can do this by sketching out a line drawing of your photo and then deciding which areas you want to darken or lighten. For each of these, decide if you want to target the effect onto the highlights, shadows or highlights.
When Dodging and Burning an image, think about how you want to direct the viewer's attention. In the example image above, | want to emphasise the shape of the path by lightening it as well as the wall, but these areas are already quite light. It might, therefore, be better to draw around these areas with the Burn Tool to darken the edges. This makes the path and wall appear darker.
The other technique we can use is to darken the outer areas of the frame (shown outlined in blue). By darkening these areas, it helps to draw the viewers attention into the image and prevents it from wandering out of the frame. It can also help to intensify the colours in those areas when we make them darker.
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
