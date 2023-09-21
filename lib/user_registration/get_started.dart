import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone_flutter/utils/AppColors.dart';
import 'package:netflix_clone_flutter/utils/AppImages.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../utils/AppStrings.dart';
import 'email_screen.dart';


class GetStartedScreen extends StatefulWidget{
  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {

  final List<String> images = [
    AppImages.dummy_nature,
    AppImages.lake_img,
    AppImages.dummy_img2,
    AppImages.dummy_img3,
    AppImages.dummy_img4,
    AppImages.bike_img1,
    AppImages.dummy_img4,
    AppImages.dummy_img3,
    AppImages.dummy_img2,
    AppImages.dummy_img3,
    AppImages.dummy_img4,
    AppImages.lake_img,
    // AppImages.bike_img1,

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Stack(
      //   children: [
      //
      //
      //   ],
      // ),

      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.black,
        ),
        child: Stack(
          children:[
            MasonryGridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 1.0,
            crossAxisSpacing: 1.0,
            itemCount: images.length, // Set the itemCount to the number of images
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(8.0),
                child: Card(
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),

            Container(
              // width: double.infinity,
              // height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment(0.8, 1.0),
                  colors: [
                    //Colors.transparent,
                    AppColors.black.withOpacity(1.0),
                    Colors.transparent,
                    AppColors.black.withOpacity(1.0),
                  ],
                  tileMode: TileMode.mirror,
                ),
              ),
            ),


            Positioned(
              top: 50.0,
              left: 20.0,
              right: 20.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(AppImages.netflix_logo,width: 29,height: 37,),
                    //SizedBox(width: 130,),
                    Row(
                      children: [
                        AppText(
                          text: AppStrings.privacy,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                        ),
                        SizedBox(width: 20,),
                        AppText(
                          text: AppStrings.SIGN_IN,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                        ),
                      ],
                    ),

                  ],
                ),
            ),
            Positioned(
              top: 300.0,
              left: 25.0,
              right: 25.0,
              child: Column(
                children: [
                  AppText(
                  text: AppStrings.unlimited_entertainment,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                    textAlign:TextAlign.center,
                  color: AppColors.white,
            ),
                  SizedBox(height: 22,),
                  AppText(
                    text: AppStrings.all_of_netrlix,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    textAlign:TextAlign.center,
                    color: AppColors.white,
                  ),
                  SizedBox(width: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.rs_sign,color: AppColors.white,),
                      SizedBox(width: 5,),
                      AppText(
                        text: AppStrings.rs149,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        textAlign:TextAlign.center,
                        color: AppColors.white,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 20,
                left: 22,
                right: 22,
                child:  Container(
                  width: double.infinity,
                  height: 61,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>EmailScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.red_dark,
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                    child: AppText(
                      text: AppStrings.get_started,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white,
                    ),
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
    Color color = AppColors.white,
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