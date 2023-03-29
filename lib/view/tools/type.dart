import 'package:flutter/material.dart';
import 'package:photoshop_01/const/const.dart';


class TypeTool extends StatefulWidget {
  const TypeTool({Key? key}) : super(key: key);

  @override
  State<TypeTool> createState() => _TypeToolState();
}

class _TypeToolState extends State<TypeTool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        body: toolTxt("assets/image/type.png",
          """1. Select the Horizontal Type Tool in the Photoshop toolbar (T).
          
2. Use the Options Bar to customize tool settings, like Text name, Text style, Text Size to get the effect you want.

3. The type tool permits direct on-image text editing.
          """,
          """Introduction to Horizontal Type Tool in Photoshop
          """,
          """The type tool permits direct on-image text editing. The only difference in between the horizontal as well as vertical type tools is that the horizontal type tool adds text flat and the vertical type tool adds text up and down.
Make use of the Horizontal Type () as well as Vertical Type () devices to develop and edit text. The new text you type is entered in a new text layer. You can produce single-line text or paragraph text. Each line of solitary line text you get in is independent-- the size of a line grows or reduces as you modify it, yet it does not wrap to the following line. To produce a brand-new line of text, press Enter. Paragraph text covers within the paragraph boundaries you define.
          """,
          """How to Use Horizontal Type Tool in Photoshop?
          """,
          """From the toolbar, pick the Horizontal Type tool
To create a single line of text, click in the image to set an insertion point for the type.
To produce paragraph text, drag a rectangle to produce a textbox for the type.
The tiny line through the I-beam marks the position of the type baseline. For horizontal type, the baseline notes the line on which the type rests; for upright type, the standard notes the facility axis of the type characters.
(Optional) Select type Options, such as font, style, size, and color, in the tool Options bar.
Type the character you desire. If you did not produce a textbox, press Enter into to create a new line.
          """,
        )
    );
  }
}
