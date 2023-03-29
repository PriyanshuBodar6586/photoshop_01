import 'package:flutter/material.dart';
import 'package:photoshop_01/const/const.dart';


class EyeTool extends StatefulWidget {
  const EyeTool({Key? key}) : super(key: key);

  @override
  State<EyeTool> createState() => _EyeToolState();
}

class _EyeToolState extends State<EyeTool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        body: toolTxt( "assets/image/eye.png",
          """  1. Select the Eyedropper tool in the Photoshop toolbar (I).
          
2. se the Options Bar to customize tool settings, like Sample Size and Sample, to get the effect you want. Click on the color you want to sample.

3. The the sampled color will become the foreground color and will be added to your Swatches panel.
          """,
          """Introduction to Eye Dropper Tool in Photoshop
          """,
          """Eyedropper tool is a very useful tool used in Photoshop to get the precise color in the artwork; using the eyedropper tool, the users can match a particular object color to the new object just by dropping the tool on to the source object, and it makes the task effortless and quick even if you do not know the color value; also users can employ the Eyedropper to assign that detailed shadow to the color palette when they link a print that is already available in the file and can be used anywhere else in the image.
          """,
          """How to Use Eye Dropper Tool in Photoshop?
          """,
          """Select the Crop tool in the Photoshop toolbox (also known as the Tools bar). Its icon looks like two intersecting right angles. To locate it quickly, just press the letter C on your keyboard. To make a crop selection, hold down the left mouse button and drag a rectangle across the image.
          """,
        )
    );
  }
}
