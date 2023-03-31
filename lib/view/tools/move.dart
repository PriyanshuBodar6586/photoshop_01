import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoshop_01/const/const.dart';
import 'package:photoshop_01/controller/home_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class MoveTool extends StatefulWidget {
  const MoveTool({Key? key}) : super(key: key);

  @override
  State<MoveTool> createState() => _MoveToolState();
}

class _MoveToolState extends State<MoveTool> {
  HomeController cnt = Get.put(HomeController());
  late YoutubePlayerController youtubePlayerController;
  @override
  void initState() {
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: 'OGP4dYcvV_0',
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
          body: toolTxt( "assets/image/move.png",
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
              text("""1.Select the Move tool(V).
            
2. Use the Options bar to customize tool settings, like Alignment and Distribution, to get the effect you want.

3. Click on an element--like a layer, selection or art-board --to move it.""", 12.sp, pClrColor: Colors.white, pTxtAlign: TextAlign.start),
              height(3.h),
              text(
                """Introduction to Move Tool in Photoshop
          """,
                16.sp,
                pClrColor: const Color(0xff0dd294e),
                pFontWeight: FontWeight.bold,
                pTxtAlign: TextAlign.start,
              ),
              height(3.h),
              text(
                """Move tool is a powerful tool in Adobe Photoshop that supports many functions that are mostly focused on providing move/alignment/transform options for the artwork that includes moving the content layer, changing the layer position in the layers panel, use transform properties, reshape or resize objects and the list continues, furthermore, the line tool is intelligent enough to sync convincingly to match the lines or patterns of a selection, all you have to do is to follow the correct step and methods starting from selecting the move tool from the toolbar to applying it in your designing.""",
                12.sp,
                pClrColor: textColor,
                pFontWeight: FontWeight.w500,
                pTxtAlign: TextAlign.start,
              ),
              height(3.h),
              text(
                """How to Use Move Tool in Photoshop?
          """,
                16.sp,
                pClrColor: const Color(0xff0dd294e),
                pFontWeight: FontWeight.bold,
                pTxtAlign: TextAlign.start,
              ),
              height(3.h),
              text(
                """The move tool will work only if there is an element present inside the image that can be moved. It should have more than one layer, and it also has to be in an unlocked state so that the image can be moved. To unlock the layer, you need to activate it in the layers panel. Shortcuts help you save a lot of time in photoshop, and knowing them makes your job easier. Holding alt and then clicking on the image will help you to drag out a duplicate of your current image. With a different layer, you will be able to move the image around freely as per your requirement.""",

                12.sp,
                pClrColor: textColor,
                pFontWeight: FontWeight.w500,
                pTxtAlign: TextAlign.start,
              ),
            ],



          )
      ),
    );
  }
}
