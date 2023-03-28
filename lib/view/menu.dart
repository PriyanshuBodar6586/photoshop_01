import 'package:flutter/material.dart';
import 'package:photoshop_01/const/const.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
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
            Center(
              child: Text("ℹPhotoshop Menu ℹ",
                  style: TextStyle(
                      color: Color(0xFF0DD294E),
                      fontSize: 19.sp,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                  height: 70.h,
                  width: 100.w,
                  color: Color(0xFF2D305A),

                  child: SfPdfViewer.asset(
                    "assets/options.pdf",
                    scrollDirection: PdfScrollDirection.vertical,
                    enableDoubleTapZooming: false,
                    maxZoomLevel: 1,
                    pageLayoutMode: PdfPageLayoutMode.single,canShowScrollHead: true,
                    canShowScrollStatus: true,
                    interactionMode: PdfInteractionMode.pan,
                    initialZoomLevel: 1,
                    pageSpacing: 6,
                    canShowHyperlinkDialog: false,
                    canShowPaginationDialog: false,
                    canShowPasswordDialog: false,
                    initialScrollOffset: Offset.fromDirection(20),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
