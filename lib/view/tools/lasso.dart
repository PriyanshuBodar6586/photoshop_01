import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoshop_01/const/const.dart';
import 'package:photoshop_01/controller/home_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class LassoTool extends StatefulWidget {
  const LassoTool({Key? key}) : super(key: key);

  @override
  State<LassoTool> createState() => _LassoToolState();
}

class _LassoToolState extends State<LassoTool> {
  HomeController cnt = Get.put(HomeController());
  late YoutubePlayerController youtubePlayerController;
  @override
  void initState() {
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: 'MRhSCfyqyOc',
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
          "assets/image/lasso.png",
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
            text("""1. Select the lasso tool in the Photoshop toolbar (L).
            
2. It's the second down, below the move tool..

3. After selecting the lasso tool. Now click on the spot of the document from where you want to draw and just draw a selection with the help of the cursor just like drawing on paper with a pencil by pressing the mouse pointer.
            """, 12.sp, pClrColor: Colors.white, pTxtAlign: TextAlign.start),
            height(3.h),
            text(
              """Introduction to Lasso Tool in Photoshop
            """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """The Lasso tools in Photoshop allow you to make irregularly shaped selections. The Lasso tools comprise three different tools — the Lasso tool itself, the Polygonal Lasso tool and the Magnetic Lasso tool.
The first two tools allow you to specify your own selections, either with hand drawn or straight edges. The Magnetic Lasso tool introduces some more advanced features that allow you to make selections that follow edges, with Photoshop doing most of the heavy lifting for you. Please read on and I'll introduce you to the different Lasso tools and show you how to use them in your own work.
            """,
              12.sp,
              pClrColor: textColor,
              pFontWeight: FontWeight.w500,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """How to Use Lasso Tool in Photoshop?
            """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """To use the Lasso tool, you just click and drag your mouse. When you release the mouse button, the selection will be closed automatically. The Polygonal Lasso tool requires you to click at different points, which are then joined by a straight selection. You can close the selection by double-clicking or moving the cursor back to the start point and clicking. We'll look at the Magnetic Lasso later.
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
