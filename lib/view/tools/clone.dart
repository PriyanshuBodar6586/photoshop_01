import 'package:flutter/material.dart';
import 'package:photoshop_01/const/const.dart';


class CloneTool extends StatefulWidget {
  const CloneTool({Key? key}) : super(key: key);

  @override
  State<CloneTool> createState() => _CloneToolState();
}

class _CloneToolState extends State<CloneTool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        body: toolTxt( "assets/image/clone stamp.png",
          """1. Select the Clone Stamp tool in the Photoshop toolbar (S).
          
2. Use the Options Bar to customize tool settings, like Mode, Flow & opacity to get the effect you want. 

3. The Photoshop Clone Stamp tool copies one area of an image onto another area of an image.
          """,
          """Introduction to Clone Stamp Tool in Photoshop
          """,
          """Clone Stamp, as the name suggests, is an image correction tool available in Photoshop that is used for restoring an image back to its original state, removing unnecessary objects in the image, and for creating artistic elements; the clone tool works after defining a target point in the image by the user; however, it requires practice and a lot of efforts initially in order to ace the usage of clone tool completely.
          """,
          """How to Use Clone Stamp Tool in Photoshop?
          """,
          """The Photoshop Clone Stamp tool copies one area of an image onto another area of an image. Photographers and designers often use the Clone Stamp tool to remove unwanted elements from a photograph. For example, it can be used to cover blemishes on people's faces by copying from another part of the skin or to remove trees from a mountain view by copying parts of the sky over them.
Open an image in Photoshop. To use the Clone Stamp tool, click and hold the rubber stamp icon in the toolbox and select Clone Stamp Tool in the flyout menu. You can adjust the brush size and shape, opacity, flow, and blending modes in the tool options bar at the top of the workspace.
To copy an exact area, leave the opacity, flow, and blending mode at their default settings. As you employ the tool more often, you will find yourself adjusting these settings. For example, when retouching a person's face, an opacity of 20 percent or lower lightly blends the skin to an even tone. You may need to clone it more times, but the effect is smoother.
By checking the box beside Aligned in the tool options bar, the target follows the movement of your cursor as you retouch. This is often desirable because it uses multiple points for the target. To make the target remain stationary, uncheck the Aligned box in the tool options.
          """,
        )
    );
  }
}
