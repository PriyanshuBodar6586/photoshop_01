import 'package:flutter/material.dart';
import 'package:photoshop_01/const/const.dart';


class CropTool extends StatefulWidget {
  const CropTool({Key? key}) : super(key: key);

  @override
  State<CropTool> createState() => _CropToolState();
}

class _CropToolState extends State<CropTool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        body: toolTxt( "assets/image/crop.png",
          """1. Select the Crop tool in the Photoshop toolbar (W).
          
2. Draw a new cropping area or drag the corner and edge handles to specify the crop boundaries in your photo.""",
          """Introduction to Crop Tool in Photoshop
          """,
          """The crop tool is nothing but selecting an area which we needed and removing the remaining area from the image; when we select an area, the remaining part will be transparent if we click to enter, the remaining deselected area will disappear, and the selected area will become full fame picture, we have some types of crops options Crop is used in every editing software’s like video editing and photo editing, in Photoshop it is used mostly for photo studio purpose, they crop the normal photos to passport and other photo sizes. We use crop mostly when we need to change the size of the images, and also if we think some part of the image is enough to our requirement, then we delete the rest with the help of crop tool; there is a lot of crop options which help us very much.
          """,
          """How to Use Crop Tool in Photoshop?
          """,
          """Select the Crop tool in the Photoshop toolbox (also known as the Tools bar). Its icon looks like two intersecting right angles. To locate it quickly, just press the letter C on your keyboard. To make a crop selection, hold down the left mouse button and drag a rectangle across the image.
          """,
        )
    );
  }
}
