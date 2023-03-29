import 'package:flutter/material.dart';
import 'package:photoshop_01/const/const.dart';


class ZoomTool extends StatefulWidget {
  const ZoomTool({Key? key}) : super(key: key);

  @override
  State<ZoomTool> createState() => _ZoomToolState();
}

class _ZoomToolState extends State<ZoomTool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        body: toolTxt( "assets/image/Zom.png",
          """1. Select the Zoom Tool in the Photoshop toolbar.
          
2. Use the Options Bar to customize tool settings, like Fit screen, Fill Screen to get the effect you want.

3. The Zoom tool is one of Photoshop's handiest and most frequently used utilities.
          """,
          """Introduction to Zoom Tool in Photoshop
          """,
          """The Zoom tool is one of Photoshop’s handiest and most frequently used utilities. Each of Photoshop’s common tools can have a wide range of applications to your graphic projects. When you need to drill down for maximum precision in your project or step out for an overview, the Zoom tool can help you do exactly that.
          """,
          """How to Use Zoom Tool in Photoshop?
          """,
          """You can zoom in to magnify your image up to 3,200 percent or zoom out to a minimum view of only 1 percent. While you'll rarely get anywhere near these extremes, you can see just how flexible and expansive the view options provided by the Zoom tool are. Higher percentages allow for less error when you draw with a tablet as well, allowing for more ornate detail. At the highest percentage, you'll see your image pixel by pixel, which is fantastic for those who design game sprites. You can use the Zoom tool to zoom out afterward and better observe the overall effect you're having on the overall image.
          """,
        )
    );
  }
}
