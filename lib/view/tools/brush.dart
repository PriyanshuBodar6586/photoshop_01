import 'package:flutter/material.dart';
import 'package:photoshop_01/const/const.dart';


class BrushTool extends StatefulWidget {
  const BrushTool({Key? key}) : super(key: key);

  @override
  State<BrushTool> createState() => _BrushToolState();
}

class _BrushToolState extends State<BrushTool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: toolTxt( "assets/image/brus.png",
        """1. select the brush tool in the Photoshop toolbar (B). 
        
2. Use the options bar to customize tool settings, like size, hardness & opacity to get the effect you want.

3. Simply  locate and select the brush tool from the tools panel, then click and drag in the document window to paint.
          """,
          """Introduction to Brush Tool in Photoshop
          """,
          """The Brush tool allows you to paint on any layer, much like a real paintbrush. You'll also have different settings to choose from, which can help you customize it for different situations.
          """,
          """How to Use Brush Tool in Photoshop?
          """,
          """It's easy to use the Brush tool to paint in your document. Simply locate and select the Brush tool from the Tools panel, then click and drag in the document window to paint. You can also press the B key on your keyboard to select the Brush tool at any time.
To choose a different brush color, click the top-most color in the Color Picker Tool (this is known as the Foreground Color), then select the desired color from the dialog box.
Some of the settings you can adjust here include:
Brush Size: If you want to make the brush larger or smaller, click the Brush Picker drop-down arrow in the Control panel, then adjust the Size slider. You can also press the bracket keys [1 to quickly increase or decrease the brush size at any time.
Hardness: If you want to make the edges of the brush harder or softer, you can adjust the hardness from the same drop- down menu. A harder brush will have clear, defined edges, whereas a softer brush will have blurry, less-defined edges. For most situations, we recommend setting the hardness to 50% or less because it will help to make individual brush strokes less obvious.
Brush Tip: If you want to create a unique effect, there are different brush tips to choose from in the same drop-down menu. Some of these are designed to mimic real-life drawing tools like pens and markers, while others are simpler.
Opacity: By default, the opacity of your brush is set to 100%, meaning the brush will use the highest intensity. However, you can reduce the opacity of your brush to make it less intense.
          """,
          )
    );
  }
}
