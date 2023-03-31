import 'package:flutter/material.dart';
import 'package:photoshop_01/controller/home_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:photoshop_01/const/const.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HandTool extends StatefulWidget {
  const HandTool({Key? key}) : super(key: key);

  @override
  State<HandTool> createState() => _HandToolState();
}

class _HandToolState extends State<HandTool> {
  HomeController cnt = Get.put(HomeController());
  late YoutubePlayerController youtubePlayerController;
  @override
  void initState() {
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: 'PcZBe3Mt9p4',
      flags: const YoutubePlayerFlags(autoPlay: false, loop: true,),
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:() => back(),
      child: Scaffold(
        backgroundColor: backGroundColor,
        body: toolTxt(
          "assets/image/hend.png",
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
            text("""1. Select the Rectangle Tool in the Photoshop toolbar (U).
            
2. Use the Options Bar to customize tool settings, like Fill, Stock to get the effect you want.

3. the Rectangle tool, which is also known as a shape tool, a drawing tool and a type tool to alter or change objects or something which we create in our designs or images.""",
                12.sp,
                pClrColor: Colors.white, pTxtAlign: TextAlign.start),
            height(3.h),
            text(
              """Introduction to Hand Tool in Photoshop
            """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """The Photoshop Hand tool helps you to move around in a picture document promptly as well as functions in a similar way to a scroll bar, allowing you to do your work quicker. The Hand tool is more of a function than actual tool since you simply you need to click the Hand tool to utilize it. Merely hold the spacebar while using other tool, and the cursor become the Hand symbol, allowing you to move the picture around in its home window by dragging.
            """,
              12.sp,
              pClrColor: textColor,
              pFontWeight: FontWeight.w500,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """How to Use Hand Tool in Photoshop?
            """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """The Hand Tool enables you to navigate an edited photo, when it is not totally visible in its window.
In the Toolbox, pick the Hand Tool.
Drag your photo to bring the hidden areas right into the view.
The 3 buttons on the Options bar enable you to pick among 3 basic viewing settings - Actual Pixels, Fit on Screen or Print Size.
Pressing the Space Bar will certainly change the active tool tothe Hand Tool.
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
