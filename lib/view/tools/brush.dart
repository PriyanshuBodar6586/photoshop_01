import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoshop_01/const/const.dart';
import 'package:photoshop_01/controller/home_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class BrushTool extends StatefulWidget {
  const BrushTool({Key? key}) : super(key: key);

  @override
  State<BrushTool> createState() => _BrushToolState();
}

class _BrushToolState extends State<BrushTool> {
  HomeController cnt = Get.put(HomeController());
  late YoutubePlayerController youtubePlayerController;

  @override
  void initState() {
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: '8ptP_kiWGEo',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        loop: true,
        showLiveFullscreenButton: false,
      ),
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
          "assets/image/brus.png",
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
            text("""1. select the brush tool in the Photoshop toolbar (B). 
          
2. Use the options bar to customize tool settings, like size, hardness & opacity to get the effect you want.

3. Simply  locate and select the brush tool from the tools panel, then click and drag in the document window to paint.
            """, 12.sp, pClrColor: Colors.white, pTxtAlign: TextAlign.start),
            height(3.h),
            text(
              """Introduction to Brush Tool in Photoshop
            """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """The Brush tool allows you to paint on any layer, much like a real paintbrush. You'll also have different settings to choose from, which can help you customize it for different situations.
            """,

              12.sp,
              pClrColor: textColor,
              pFontWeight: FontWeight.w500,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """How to Use Brush Tool in Photoshop?
            """,
              16.sp,
              pClrColor: Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """It's easy to use the Brush tool to paint in your document. Simply locate and select the Brush tool from the Tools panel, then click and drag in the document window to paint. You can also press the B key on your keyboard to select the Brush tool at any time.
To choose a different brush color, click the top-most color in the Color Picker Tool (this is known as the Foreground Color), then select the desired color from the dialog box.
Some of the settings you can adjust here include:
Brush Size: If you want to make the brush larger or smaller, click the Brush Picker drop-down arrow in the Control panel, then adjust the Size slider. You can also press the bracket keys [1 to quickly increase or decrease the brush size at any time.
Hardness: If you want to make the edges of the brush harder or softer, you can adjust the hardness from the same drop- down menu. A harder brush will have clear, defined edges, whereas a softer brush will have blurry, less-defined edges. For most situations, we recommend setting the hardness to 50% or less because it will help to make individual brush strokes less obvious.
Brush Tip: If you want to create a unique effect, there are different brush tips to choose from in the same drop-down menu. Some of these are designed to mimic real-life drawing tools like pens and markers, while others are simpler.
Opacity: By default, the opacity of your brush is set to 100%, meaning the brush will use the highest intensity. However, you can reduce the opacity of your brush to make it less intense.
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
