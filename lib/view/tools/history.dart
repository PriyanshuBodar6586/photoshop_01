import 'package:flutter/material.dart';
import 'package:photoshop_01/const/const.dart';
import 'package:photoshop_01/controller/home_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HistoryTool extends StatefulWidget {
  const HistoryTool({Key? key}) : super(key: key);

  @override
  State<HistoryTool> createState() => _HistoryToolState();
}

class _HistoryToolState extends State<HistoryTool> {
  HomeController cnt = Get.put(HomeController());
  late YoutubePlayerController youtubePlayerController;
  @override
  void initState() {
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: 'EX9z-iRV95Y ',
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
          "assets/image/history brush.png",
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
            text("""1. Select the Eraser tool in the Photoshop toolbar(E).
            
2.Use the options bar to customize tool settings, like mode, flow & opacity to get the effect you want.

3. This is a regular or default process of using the eraser in Photoshop to remove unwanted pixels in the image.
            """, 12.sp, pClrColor: Colors.white, pTxtAlign: TextAlign.start),
            height(3.h),
            text(
              """Introduction to History Brush Tool in Photoshop
            """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """Photoshop's History feature enables you to store multiple image states as you progress through a Photoshop session and work on an individual image. The History panel displays the sequence of Photoshop states as you progress through a Photoshop session. To select a previous state, just click to select the desired history state to make it active.
One can look at the History as a multiple undo feature in which you can reverse through up to 1000 image states, but in actual fact History is a far more sophisticated and powerful tool than just that. Painting from History, using the history brush, saves you from tedious workarounds like having to duplicate a portion of the image to another layer, retouching this layer and merging back down to the underlying layer again. History states can also be temporarily saved as Snapshots as you work.
            """,
              12.sp,
              pClrColor: textColor,
              pFontWeight: FontWeight.w500,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """How to Use History Brush Tool in Photoshop?
            """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """To use the history brush, go to the History panel and click on the space just to the left of the history state you wish to paint from — you will see a history brush icon appear against it. You can then paint information in from a previous history state (or from one of the snapshots) to the active state. The history brush therefore lets you selectively restore the previously held image information as desired. That is a simple way of looking at the history brush, but it has the potential to be very versatile.
The number of recorded histories can be set in the Photoshop preferences. When the maximum number of history states has been reached, the earliest history state at the top of the list is discarded. If you reduce the number of history states allowed, any subsequent action will also cause the earlier history states beyond this number to be discarded.
The History feature does not really take on the role of a repeat Edit Undo command and nor should it. There are a number of Photoshop procedures which will remain undoable only by using the Edit Undo command, like intermediate changes when setting the shadows and highlights in the Levels dialog.
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
