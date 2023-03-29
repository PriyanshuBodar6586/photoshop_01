import 'package:flutter/material.dart';
import 'package:photoshop_01/const/const.dart';


class Quick extends StatefulWidget {
  const Quick({Key? key}) : super(key: key);

  @override
  State<Quick> createState() => _QuickState();
}

class _QuickState extends State<Quick> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        body: toolTxt(  "assets/image/quick selection.png",
          """1. Select the Quick selection tool in the Photoshop toolbar (W).

2. Click on other areas inside the object to add them to your selection.

3. Click 'Edit' from the Menu Bar and then click 'Copy' once the entire object has been selected.
          """,
          """Introduction to Quick Selection Tool in Photoshop
          """,
          """Quick Selection Tool is the essential piece of the Tool panel of Adobe Photoshop application and utilized for the selection of a specific segment of the raster object for altering purposes, and the tool is widely known for its time sparing element and precision with high-res raster pictures, the user can understand about the usage and application of Quick Selection Tool in making the erroneous task of selecting a particular part of an image with ease and save precious time.
          """,
          """How to Use Quick Selection Tool in Photoshop?
          """,
          """Click and drag over an area you want to select. The tool automatically selects similar tones and stops when it finds image edges. To add to the initial selection, just click and drag over another area. The Quick Selection tool automatically changes to the Add to selection option.
          """,
        )
    );
  }
}
