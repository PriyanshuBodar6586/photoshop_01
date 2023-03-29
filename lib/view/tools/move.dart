import 'package:flutter/material.dart';
import 'package:photoshop_01/const/const.dart';


class MoveTool extends StatefulWidget {
  const MoveTool({Key? key}) : super(key: key);

  @override
  State<MoveTool> createState() => _MoveToolState();
}

class _MoveToolState extends State<MoveTool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        body: toolTxt( "assets/image/move.png",
          """1.Select the Move tool(V).
          
2. Use the Options bar to customize tool settings, like Alignment and Distribution, to get the effect you want.

3. Click on an element--like a layer, selection or art-board --to move it.""",
          """Introduction to Move Tool in Photoshop
        """,
          """Move tool is a powerful tool in Adobe Photoshop that supports many functions that are mostly focused on providing move/alignment/transform options for the artwork that includes moving the content layer, changing the layer position in the layers panel, use transform properties, reshape or resize objects and the list continues, furthermore, the line tool is intelligent enough to sync convincingly to match the lines or patterns of a selection, all you have to do is to follow the correct step and methods starting from selecting the move tool from the toolbar to applying it in your designing.""",
          """How to Use Move Tool in Photoshop?
        """,
          """The move tool will work only if there is an element present inside the image that can be moved. It should have more than one layer, and it also has to be in an unlocked state so that the image can be moved. To unlock the layer, you need to activate it in the layers panel. Shortcuts help you save a lot of time in photoshop, and knowing them makes your job easier. Holding alt and then clicking on the image will help you to drag out a duplicate of your current image. With a different layer, you will be able to move the image around freely as per your requirement.""",
        )
    );
  }
}
