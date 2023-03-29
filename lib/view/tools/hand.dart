import 'package:flutter/material.dart';
import 'package:photoshop_01/const/const.dart';


class HandTool extends StatefulWidget {
  const HandTool({Key? key}) : super(key: key);

  @override
  State<HandTool> createState() => _HandToolState();
}

class _HandToolState extends State<HandTool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        body: toolTxt( "assets/image/hend.png",
          """1. Select the Rectangle Tool in the Photoshop toolbar (U).
          
2. Use the Options Bar to customize tool settings, like Fill, Stock to get the effect you want.

3. the Rectangle tool, which is also known as a shape tool, a drawing tool and a type tool to alter or change objects or something which we create in our designs or images.""",
          """Introduction to Hand Tool in Photoshop
          """,
          """The Photoshop Hand tool helps you to move around in a picture document promptly as well as functions in a similar way to a scroll bar, allowing you to do your work quicker. The Hand tool is more of a function than actual tool since you simply you need to click the Hand tool to utilize it. Merely hold the spacebar while using other tool, and the cursor become the Hand symbol, allowing you to move the picture around in its home window by dragging.
          """,
          """How to Use Hand Tool in Photoshop?
          """,
          """The Hand Tool enables you to navigate an edited photo, when it is not totally visible in its window.
In the Toolbox, pick the Hand Tool.
Drag your photo to bring the hidden areas right into the view.
The 3 buttons on the Options bar enable you to pick among 3 basic viewing settings - Actual Pixels, Fit on Screen or Print Size.
Pressing the Space Bar will certainly change the active tool tothe Hand Tool.
          """,
        )
    );
  }
}
