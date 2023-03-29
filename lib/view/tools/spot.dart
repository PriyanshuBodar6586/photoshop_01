import 'package:flutter/material.dart';
import 'package:photoshop_01/const/const.dart';


class SpotTool extends StatefulWidget {
  const SpotTool({Key? key}) : super(key: key);

  @override
  State<SpotTool> createState() => _SpotToolState();
}

class _SpotToolState extends State<SpotTool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        body: toolTxt(  "assets/image/sport.png",
          """1. Select the spot healing brush tool in the Photoshop toolbar (J).

2. Use the Options Bar to customize tool settings, like size, Hardness & pressure to get the effect you want.

3. For smaller areas: Simply click area you want to fix.
          """,
          """Introduction to Spot Healing Brush Tool in Photoshop
          """,
          """Healing Brush Tool is one of the most popular tools of this software. You can also do any type of editing work with the help of this tool. We generally use this tool for color correcting any image by taking the color sample from the same image, removing any object from an image, taking any object of an image, and placing it on other positions in the same image. This article will discuss the features and working of this tool and check out ‘How it can be used?’ in a different context with some examples.
          """,
          """How to Use Spot Healing Brush Tool in Photoshop?
          """,
          """The spot healing brush is the default healing tool in Photoshop and can be used to clone areas from an image and blend the pixels from the sampled area seamlessly with the target area. The basic principle is that the texture from the sample area is blended with the color and luminosity surrounding wherever you paint. The main difference between this and the standard healing brush is that the spot healing brush requires no source point. You simply click on the blemishes you want to get rid of (or drag with the tool to paint over the larger areas you wish to repair) and the spot healing brush works out the rest for you. It is in many ways a lot easier to use than the standard healing brush and extremely effective at removing most blemishes and marks.
          """,
        )
    );
  }
}
