import 'package:flutter/material.dart';
import 'package:photoshop_01/const/const.dart';


class LassoTool extends StatefulWidget {
  const LassoTool({Key? key}) : super(key: key);

  @override
  State<LassoTool> createState() => _LassoToolState();
}

class _LassoToolState extends State<LassoTool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        body: toolTxt( "assets/image/lasso.png",
          """1. Select the lasso tool in the Photoshop toolbar (L).
          
2. It's the second down, below the move tool..

3. After selecting the lasso tool. Now click on the spot of the document from where you want to draw and just draw a selection with the help of the cursor just like drawing on paper with a pencil by pressing the mouse pointer.
          """,
          """Introduction to Lasso Tool in Photoshop
          """,
          """The Lasso tools in Photoshop allow you to make irregularly shaped selections. The Lasso tools comprise three different tools — the Lasso tool itself, the Polygonal Lasso tool and the Magnetic Lasso tool.
The first two tools allow you to specify your own selections, either with hand drawn or straight edges. The Magnetic Lasso tool introduces some more advanced features that allow you to make selections that follow edges, with Photoshop doing most of the heavy lifting for you. Please read on and I'll introduce you to the different Lasso tools and show you how to use them in your own work.
          """,
          """How to Use Lasso Tool in Photoshop?
          """,
          """To use the Lasso tool, you just click and drag your mouse. When you release the mouse button, the selection will be closed automatically. The Polygonal Lasso tool requires you to click at different points, which are then joined by a straight selection. You can close the selection by double-clicking or moving the cursor back to the start point and clicking. We'll look at the Magnetic Lasso later.
          """,
        )
    );
  }
}
