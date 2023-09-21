import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone_flutter/user_profile_management/add_profile.dart';
import 'package:netflix_clone_flutter/utils/AppImages.dart';

import '../utils/AppColors.dart';
import '../utils/AppStrings.dart';

class HelpItem {
  final String image;
  final String text;


  HelpItem(this.image,this.text,);
}

class FindHelpOnline extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final List<HelpItem> helpItems = [
    HelpItem(AppImages.login_icon,AppStrings.help_center),
    HelpItem(AppImages.paper_icon,AppStrings.request_title),
    HelpItem(AppImages.tool_icon,AppStrings.fix_connection_problem,),
      HelpItem(AppImages.security_icon,AppStrings.privacy_statemenet),
      HelpItem(AppImages.terms_of_use_icon,AppStrings.term_of_use,),
    ];

    return Scaffold(
      body: Container(
        width:  double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(
              children: [
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.arrow_back,color: AppColors.black,size: 25,),
                ),
                SizedBox(width: MediaQuery.of(context).size.width*0.2,),
                AppText(
                    text: AppStrings.natflix,
                    fontWeight: FontWeight.w500,
                    fontSize: 32,
                    color: AppColors.red_dark
                ),
              ],
            ),
            SizedBox(height: 20,),
            AppText(
                text: AppStrings.find_help_online,
                fontWeight: FontWeight.w500,
                fontSize: 23,
                color: AppColors.black
            ),
            SizedBox(height: 30,),
           Container(
             width: double.infinity,
             height: 0.4,
             color: AppColors.blue,
           ),


           // SizedBox(height: 10,),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height*0.38,
                  child:Column(
                    children: List.generate(helpItems.length, (index) {
                      final item = helpItems[index];
                      return Column(
                        children: [
                          ListTile(
                            leading: SvgPicture.asset(item.image),
                            title: Text(
                              item.text,
                              style: const TextStyle(
                                color: AppColors.blue,
                              ),
                            ),
                          ),
                          //if (index < helpItems.length - 1)
                            const Divider(
                              color: AppColors.blue,
                              height: 0.5,
                              thickness: 0.4,
                            ),
                        ],
                      );
                    },
                    ),
                ),

                ),
              ],
            ),


            SizedBox(height: 30,),
            AppText(
                text: AppStrings.contact,
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: AppColors.black
            ),
            AppText(
                text: AppStrings.natflix_customer_service,
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: AppColors.black
            ),
            SizedBox(height: 15,),
            AppText(
                text: AppStrings.please_wait,
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: AppColors.black,
              textAlign: TextAlign.center
            ),
            SizedBox(height: 48,),
            Container(
              width: 120,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AddProfile()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(AppImages.call_icon),
                    SizedBox(width: 8),
                    Text(
                      AppStrings.call,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
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

}