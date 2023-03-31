import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoshop_01/const/const.dart';
import 'package:photoshop_01/controller/home_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class TypeTool extends StatefulWidget {
  const TypeTool({Key? key}) : super(key: key);

  @override
  State<TypeTool> createState() => _TypeToolState();
}

class _TypeToolState extends State<TypeTool> {
  HomeController cnt = Get.put(HomeController());
  late YoutubePlayerController youtubePlayerController;
  @override
  void initState() {
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: 'HHcbMwgp6Ao',
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
          body: toolTxt("assets/image/type.png",
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
            text("""1. Select the Horizontal Type Tool in the Photoshop toolbar (T).
            
2. Use the Options Bar to customize tool settings, like Text name, Text style, Text Size to get the effect you want.

3. The type tool permits direct on-image text editing.
            """, 12.sp, pClrColor: Colors.white, pTxtAlign: TextAlign.start),
            height(3.h),
            text(
              """Introduction to Horizontal Type Tool in Photoshop
            """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """The type tool permits direct on-image text editing. The only difference in between the horizontal as well as vertical type tools is that the horizontal type tool adds text flat and the vertical type tool adds text up and down.
Make use of the Horizontal Type () as well as Vertical Type () devices to develop and edit text. The new text you type is entered in a new text layer. You can produce single-line text or paragraph text. Each line of solitary line text you get in is independent-- the size of a line grows or reduces as you modify it, yet it does not wrap to the following line. To produce a brand-new line of text, press Enter. Paragraph text covers within the paragraph boundaries you define.
            """,
              12.sp,
              pClrColor: textColor,
              pFontWeight: FontWeight.w500,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """How to Use Horizontal Type Tool in Photoshop?
            """,
              16.sp,
              pClrColor: const Color(0xff0dd294e),
              pFontWeight: FontWeight.bold,
              pTxtAlign: TextAlign.start,
            ),
            height(3.h),
            text(
              """From the toolbar, pick the Horizontal Type tool
To create a single line of text, click in the image to set an insertion point for the type.
To produce paragraph text, drag a rectangle to produce a textbox for the type.
The tiny line through the I-beam marks the position of the type baseline. For horizontal type, the baseline notes the line on which the type rests; for upright type, the standard notes the facility axis of the type characters.
(Optional) Select type Options, such as font, style, size, and color, in the tool Options bar.
Type the character you desire. If you did not produce a textbox, press Enter into to create a new line.
            """,
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
