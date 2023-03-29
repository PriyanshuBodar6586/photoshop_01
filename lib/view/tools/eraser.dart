import 'package:flutter/material.dart';
import 'package:photoshop_01/const/const.dart';


class EraserTool extends StatefulWidget {
  const EraserTool({Key? key}) : super(key: key);

  @override
  State<EraserTool> createState() => _EraserToolState();
}

class _EraserToolState extends State<EraserTool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        body: toolTxt("assets/image/eraser.png",
          """1. Select the Eraser tool in the Photoshop toolbar (E).
          
2. Use the Options Bar to customize tool settings, like Mode, Flow & opacity to get the effect you want.

3. This is a regular or default process of using the eraser in Photoshop to remove unwanted pixels in the image.
          """,
          """Introduction to Eraser Tool in Photoshop
          """,
          """we are going to look after the erasing tool in Photoshop. Upon undoing, the last edit completely gets removed, but we need part of the edit to retain in the image; then, we can use this erase for multiple proposes of removing minor or small things or decrease their opacity of objects from the frame, which based on the requirements of output.
          """,
          """How to Use Eraser Tool in Photoshop?
          """,
          """This is a regular or default process of using the eraser in Photoshop to remove unwanted pixels in the image. Upon erasing the image portion, it becomes transparent, and the pixels will be removed on the areas of brush movement. By doing this, the background image can be shown if we have multiple layers, make the image transparent where required and small or large portions of objects can be removed from the image which is not needed and use the clown stamp tool or other images to cover it.
          """,
        )
    );
  }
}
