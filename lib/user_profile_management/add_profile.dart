import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone_flutter/utils/AppImages.dart';

import '../utils/AppColors.dart';
import '../utils/AppStrings.dart';

class AddProfile extends StatefulWidget{
  @override
  State<AddProfile> createState() => _AddProfileState();
}

class _AddProfileState extends State<AddProfile> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.black,
        child: Column(
          children: [
            SizedBox(height: 40,),
            Row(
              children: [
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.arrow_back,color: AppColors.white,size: 25,),
                ),
                SizedBox(width: MediaQuery.of(context).size.width*0.2,),
                AppText(
                    text: AppStrings.add_profile,
                    fontWeight: FontWeight.w500,
                    fontSize: 27,
                    color: AppColors.white
                ),
              ],
            ),
            SizedBox(height: 30,),
            Container(
              width: 130,
              height: 130,
              child: Stack(
                children:[
                  SvgPicture.asset(
                  AppImages.my_netflix_profile,
                  width: 120,
                  height: 120,
                ),
                  Positioned(
                    right: 0.2,
                      bottom: 5,
                      child: SvgPicture.asset(AppImages.edit_icon),
                  ),
               ],
              ),
            ),
            SizedBox(height: 30,),
            CustomTextField(
              labelText: AppStrings.profile_name,
            ),
            SizedBox(height: 30,),
            Container(
              width: 390,
              height: 90,
              margin: EdgeInsets.only(left: 20,right: 20),
              padding: EdgeInsets.only(top:5,left: 10,right: 10,bottom: 5),
              decoration: BoxDecoration(
                color: AppColors.dark_grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(4)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: AppStrings.children_profile,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                  ),
                  Row(
                    children: [
                      Container(
                        width:230,
                        height: 30,
                        child: AppText(
                          text: AppStrings.made_for_children,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.white,
                          textAlign: TextAlign.start
                        ),
                      ),
                     // SizedBox(width: 0.5,),
                      Switch(
                        activeColor: Colors.amber,
                        activeTrackColor: Colors.cyan,
                        inactiveThumbColor: Colors.blueGrey.shade600,
                        inactiveTrackColor: Colors.grey.shade400,
                        splashRadius: 10.0,
                        value: _switchValue,
                        onChanged: (newValue) {
                          setState(() {
                            _switchValue = newValue;
                          });
                          //  switch is toggled
                        },

                        //activeColor: Colors.green,
                      ),

                    ],
                  ),
                ],
              ),
            )
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

  Widget CustomTextField({required String labelText,
    bool obscureText = false,
    TextEditingController? controller,
    TextInputType? keyboardType,
    TextInputAction? textInputAction,
    FocusNode? focusNode,
    VoidCallback? onChanged,
    Function()? onEditingComplete,
    EdgeInsetsGeometry? contentPadding,
    VoidCallback? onTap,
    String? Function(String?)? validator,
    bool isFocused = false,

  }) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20,2,10,2),
      margin: EdgeInsets.only(left: 50,right: 50),
      width: double.infinity,
      decoration: BoxDecoration(
        color: isFocused ? AppColors.dark_grey.withOpacity(0.5) : AppColors.dark_grey,
        borderRadius: BorderRadius.circular(4),
      ),
      child: TextField(
        style: TextStyle(color: Colors.white),
        onTap: () {
          setState(() {
            isFocused = true;
          });
        },
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: labelText,
          labelStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.normal,
            fontSize: 15,
            color: Colors.white,
          ),
          contentPadding: contentPadding,
        ),
        //validator: validator,
        focusNode: focusNode,
      ),
    );
  }
}