import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoshop_01/const/const.dart';
import 'package:photoshop_01/controller/home_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class RectangleTool extends StatefulWidget {
  const RectangleTool({Key? key}) : super(key: key);

  @override
  State<RectangleTool> createState() => _RectangleToolState();
}

class _RectangleToolState extends State<RectangleTool> {
  HomeController cnt = Get.put(HomeController());
  late YoutubePlayerController youtubePlayerController;
  @override
  void initState() {
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: 'Pg9cVyOv0q8',
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
          "assets/image/rectangl.png",
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

3. the Rectangle tool, which is also known as a shape tool, a drawing tool and a type tool to alter or change objects or something which we create in our designs or images.
            """, 12.sp, pClrColor: Colors.white, pTxtAlign: TextAlign.start),
            height(3.h),
            text(
              """Introduction to Rectangle Tool in Photoshop
            """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """The Rectangle Tool is the one that’s visible by default, but if we click and hold on to the tool's icon, a fly-out menu appears, showing us the other tools we can choose from. We have something called the Rectangle tool, which is also known as a shape tool, a drawing tool and a type tool to alter or change objects or something which we create in our designs or images.
            """,
              12.sp,
              pClrColor: textColor,
              pFontWeight: FontWeight.w500,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """How to Use Rectangle Tool in Photoshop?
            """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """To know more and learn in-depth about how we use the Rectangle tool so we can draw any shapes, we first need to talk to Photoshop about what kind of shape we want to create. This makes us aware that our Photoshop sets a thing for us to draw three different kinds of shapes. So to our understanding, we get to visualize what we can draw using vector shape, path, or pixel shapes.
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
