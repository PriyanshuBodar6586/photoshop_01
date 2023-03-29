import 'package:flutter/material.dart';
import 'package:photoshop_01/const/const.dart';


class MarqueeTool extends StatefulWidget {
  const MarqueeTool({Key? key}) : super(key: key);

  @override
  State<MarqueeTool> createState() => _MarqueeToolState();
}

class _MarqueeToolState extends State<MarqueeTool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        body: toolTxt( "assets/image/marquee.png",
          """1. Select the marquee tool in the Photoshop toolbar (M).
          
2. It's the second, Next to the move tool.

3. Select an area of the image to work with. Position the mouse where you want to begin the selection and click the left mouse button, holding it down while you drag the selection to the desired size.
          """,
          """Introduction to marquee tool in Photoshop
          """,
          """Marquee tool is the basic selection tool that can select your Photoshop layer in several shapes, like rectangle, ellipse, single-pixel vertical and horizontal line, square, and circle, etc. By default, the marquee tool makes the rectangular selection.
          """,
          """How to Use marquee tool in Photoshop?
          """,
          """You can use the Photoshop marquee tool to select areas of an image that you can then copy, cut, or crop. It can also isolate sections of a graphic to apply a filter or effect to a particular area. Marquee selections also mark out boundaries for stroke and fill commands to create shapes and lines.
          """,
        )
    );
  }
}
