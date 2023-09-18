import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone_flutter/Content_categories/home_page_view.dart';
import 'package:netflix_clone_flutter/user_profile/signIn_screen.dart';
// import 'package:pretty_textfield/pretty_textfield.dart';

import '../utils/AppColors.dart';
import '../utils/AppStrings.dart';

class EmailScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 147,
              left: 30,
              right: 30,
              child: Column(
                children: [
                  Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(
                      text: AppStrings.ready_to_watch,
                      fontSize: 29,
                      fontWeight: FontWeight.w500,
                      color: AppColors.text_color_dark_grey,
                    ),
                  ],
            ),
                  SizedBox(height: 17,),
                  AppText(
                    text: AppStrings.enter_your_email,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.text_color_grey,
                    textAlign: TextAlign.center
                  ),
                ],
              ),
          ),
           Positioned(
            top: 282,
              left: 22,
              right: 22,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(10,2,10,2),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Colors.grey)
                    ),
                    child: const TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: AppStrings.email,

                      ),
                    ),
                  ),

               SizedBox(height: 40,),
               Container(
                 width: double.infinity,
                 height: 61,
                 child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
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

                ],
              ),
          ),
        ],
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