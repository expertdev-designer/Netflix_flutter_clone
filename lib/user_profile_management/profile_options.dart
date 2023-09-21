import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone_flutter/user_registration/get_started.dart';

import '../utils/AppColors.dart';
import '../utils/AppImages.dart';
import '../utils/AppStrings.dart';

class ProfileOptiond extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.black
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            AppText(
              text: AppStrings.natflix,
              fontSize: 36,
              fontWeight: FontWeight.w500,
              color: AppColors.red_dark,
            ),
            SizedBox(height: 50,),
            Container(
              padding: EdgeInsets.only(top: 50),
              margin: EdgeInsets.only(left: 20,right: 20),
              child: Column(
                children: [
                  AppText(
                    text: AppStrings.who_is_watching,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                  ),

                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>GetStartedScreen()));
                            },
                              child: SvgPicture.asset(AppImages.my_netflix_profile,width:100,height: 100,)),
                          SizedBox(height: 4,),
                          AppText(
                            text: AppStrings.john_deo,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.white,
                          ),

                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(AppImages.profile_img_green,width:100,height: 100,),
                          SizedBox(height: 4,),
                          AppText(
                            text: AppStrings.john_deo,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.white,
                          ),

                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Stack(children:[
                            SvgPicture.asset(AppImages.children_bg_img,width:100,height: 100,),

                            Positioned(
                                top: 40,
                                left: 0,
                                right: 0,
                                child: Image.asset(AppImages.children_text_png
                                )
                            )
                          ] ,
                          ),
                          SizedBox(height: 4,),
                          AppText(
                            text: AppStrings.children_profile,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.white,
                          ),

                        ],
                      ),
                      Column(
                        children: [
                          //SvgPicture.asset(AppImages.profile_img_green,width:100,height: 100,),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.white
                              )
                            ),
                            child: Icon(Icons.add,color: AppColors.white,size: 40,),
                          ),
                          SizedBox(height: 4,),
                          AppText(
                            text: AppStrings.add_profile,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.white,
                          ),

                        ],
                      ),
                    ],
                  )

                ],
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