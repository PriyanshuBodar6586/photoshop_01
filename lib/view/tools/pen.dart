import 'package:flutter/material.dart';
import 'package:photoshop_01/const/const.dart';


class PenTool extends StatefulWidget {
  const PenTool({Key? key}) : super(key: key);

  @override
  State<PenTool> createState() => _PenToolState();
}

class _PenToolState extends State<PenTool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        body: toolTxt( "assets/image/pen.png",
          """1. Select the Pen tool in the Photoshop toolbar (P).

2. Use the Options Bar to customize tool settings, like Range, Exposure to get the effect you want.

3. The Pen Tool in Photoshop creates paths and shapes which can be duplicated and manipulated to create complex selections, masks and objects.
          """,
          """Introduction to Pen Tool in Photoshop
          """,
          """The Pen Tool in Photoshop creates paths and shapes which can be duplicated and manipulated to create complex selections, masks and objects.
Unlike the Brush Tool and Pencil Tools, which “draw” pixels onto your image, the Pen Tool always creates a vector path when used. These paths appear as either Work Paths or Shape Paths in the Paths Panel.
          """,
          """How to Use Pen Tool in Photoshop?
          """,
          """The standard Pen Tool allows you to create straight and curved paths with amazing accuracy, but mastering it takes some practice. Don’t get discouraged if it's difficult at first. You can always adjust a path after you create it.
To create a path that you can then use as a selection, choose the standard Pen Tool, and then choose Path in the options bar drop-down menu at the top of the application window.
          """,
        )
    );
  }
}
