import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/AppColors.dart';
import '../utils/AppImages.dart';
import '../utils/AppStrings.dart';

class SearchScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final List<String> images = [
      AppImages.red_box,
      AppImages.blue_box,
      AppImages.green_box,
      AppImages.children_bg_img,
      AppImages.red_box,
      AppImages.blue_box,
      AppImages.green_box,
      AppImages.children_bg_img,
      // AppImages.bike_img1,

    ];
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.black
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            Row(
              children: [
                SizedBox(width: 10,),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.arrow_back,color: AppColors.white,size: 25,),
                ),
                SizedBox(width: MediaQuery.of(context).size.width*0.2,),
                AppText(
                    text: AppStrings.natflix,
                    fontWeight: FontWeight.w500,
                    fontSize: 27,
                    color: AppColors.red_dark
                ),
              ],
            ),

            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: AppStrings.search_for,
                hintStyle: TextStyle(color: AppColors.white),
                filled: true,
                fillColor: AppColors.dark_grey.withOpacity(0.5),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
                prefixIcon: Icon(Icons.search, color: AppColors.white),
              ),
              style: TextStyle(color: AppColors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 20,),
              child: AppText(
                  text: AppStrings.top_searches,
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: AppColors.white
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: images.map((image) {
                    return Padding(
                      padding: EdgeInsets.only(left: 10, right: 16, top: 5, bottom: 8),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: Container(
                          width: 145,
                          height: 81,
                          child: SvgPicture.asset(
                            image,
                            fit: BoxFit.fill,
                            // width: 200,
                            // height: 100,
                          ),
                        ),
                        title: AppText(
                          text: AppStrings.lorem_ipsum,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: AppColors.white,
                        ),
                        trailing: Image.asset(AppImages.play_img),
                        onTap: () {
                          //  tap here
                        },
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget AppText({
    required String text,
    double fontSize = 15,
    FontWeight fontWeight = FontWeight.normal,
    Color color = AppColors.black,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    TextAlign? textAlign,
  }) {
    return Text(
      text,
      style: GoogleFonts.inter(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
      ),
      textAlign: textAlign ?? TextAlign.left,
    );
  }

}