import 'package:flutter/material.dart';
import 'package:photoshop_01/const/const.dart';


class PathTool extends StatefulWidget {
  const PathTool({Key? key}) : super(key: key);

  @override
  State<PathTool> createState() => _PathToolState();
}

class _PathToolState extends State<PathTool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        body: toolTxt( "assets/image/path.png",
          """1. Select the Path Selection Tool in the Photoshop toolbar (A).

2. Use the Options Bar to customize tool settings, like Fill, Stock to get the effect you want.

3. The path selection tool can be utilized to select a whole path or sub path.""",
          """Introduction to Path Selection Tool in Photoshop
""",
          """Photoshop offers a suite of vector path drawing tools that work in the same way as the pen path tools located in Adobe Illustrator as well as various other programs that allow you to draw vector paths. If you are coming close to Photoshop for the first time as well as have never any type of experience using vector path illustration tools, after that the Photoshop path tools may need some obtaining made use of to.
""",
          """How to Use Path Selection Tool in Photoshop?
""",
          """The path selection tool can be utilized to select a whole path or sub path. If you have a path that shows up in a Photoshop document, marquee drag or click with the path selection tool to pick a path and this will make all the anchor points become active. You could tell if the anchor points have actually been made active because they will look like filled squares. When all the points have actually been active, you can utilize the path selection tool to reposition a path, or make use of the key-board arrow keys to nudge the path position. Note that the combination of the Command + Option/Control + Alt keys could also be made use of to change the pen tool to the path selection tool.
""",
        )
    );
  }
}
