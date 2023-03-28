import 'package:flutter/material.dart';
import 'package:photoshop_01/const/const.dart';
import 'package:sizer/sizer.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(
          decelerationRate: ScrollDecelerationRate.normal,
        ),
        child: Column(
          children: [
            Container(
              height: 25.h,
              width: 100.h,
              color: Colors.white70,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 28.h,
                width: 100.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset("assets/image/course_1662639286.png",
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Center(child: Text("ℹ Introduction to Photoshop ℹ",style: TextStyle(color: Color(0xFF0DD294E),fontSize: 19.sp,fontWeight: FontWeight.bold)),),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                """Photoshop is a photo-editing software. It is a popular image changing software package. It was developed in 1987 by the American brothers Thomas and John Knoll. There are two types of graphic software – Vector Graphic and Raster Graphic. This software provides many image editing features for raster (pixel-based) images as well as vector graphics. In technical language, Photoshop is a RASTER graphic software, which means it is used to edit the raster graphics. 

RASTER is a combination of pixels. A group of pixels forms a graphic called Raster Graphics. There are various forms of formats of Raster Graphics – 
 

- JPEG – Joint Photographic Experts Group.
- PNG – Portable Network Graphics.
- GIF – Graphics Interchange Format.

Photoshop is a tool for designers, web developers, graphic artists, photographers, and creative professionals. It is widely used in industries. Web Designer uses photoshop first to make a logo for website. Application Designer also uses photoshop first to create User Interface for his application. Even, 3D game developer also uses photoshop to create a digital painting of its character in game. One can also develop Matte Painting (which is unusual, as the unreal type of scenes) scenes using these tools. """,
                style: TextStyle(color: Colors.white,fontSize: 12.sp),
              ),
            )
          ],
        ),
      ),
    );
  }
}
