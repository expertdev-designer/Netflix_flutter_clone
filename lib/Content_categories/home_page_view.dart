import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone_flutter/content_search_and%20_filter/search_screen.dart';
import 'package:netflix_clone_flutter/user_registration/find_help.dart';
import 'package:netflix_clone_flutter/utils/AppColors.dart';
import 'package:netflix_clone_flutter/utils/AppImages.dart';
import 'package:netflix_clone_flutter/utils/AppStrings.dart';

import 'new_hot_screen.dart';

class HomePageView extends StatefulWidget{
  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final List<String> items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     bottomNavigationBar: BottomNavigationBar(
       currentIndex: _currentIndex,
       backgroundColor: Colors.black,
       selectedFontSize: 12.0,
       selectedIconTheme: IconThemeData(color: Colors.white),
       unselectedIconTheme: IconThemeData(color: Colors.grey),
       unselectedFontSize: 12.0,
       type: BottomNavigationBarType.fixed,
       selectedItemColor: Colors.white,
       unselectedItemColor:  Colors.grey,
       onTap: (index) {
         setState(() {
           _currentIndex = index;
         });
         if (index == 2) {
           Navigator.push(
             context,
             MaterialPageRoute(
               builder: (context) =>
                   NewHotScreen(),
             ),
           );
         }else if(index == 3){
           Navigator.push(
             context,
             MaterialPageRoute(
               builder: (context) =>
                   FindHelpOnline(),
             ),
           );
         }
       },
       items: [
         BottomNavigationBarItem(
           icon: SvgPicture.asset(
             AppImages.home_icon,
             width: 24,
             height: 24,
             color: _currentIndex == 0 ? Colors.white : Colors.grey,
           ),
           label: AppStrings.home,
         ),
         BottomNavigationBarItem(
           icon: SvgPicture.asset(
             AppImages.game,
             width: 24,
             height: 24,
             color: _currentIndex == 1 ? Colors.white : Colors.grey,
           ),
           label: AppStrings.game,
         ),
         BottomNavigationBarItem(
           icon: SvgPicture.asset(
             AppImages.new_hot,
             width: 24,
             height: 24,
             color: _currentIndex == 2 ? Colors.white : Colors.grey,
           ),
           label: AppStrings.new_hot,
         ),
         BottomNavigationBarItem(
           icon: SvgPicture.asset(
             AppImages.my_netflix,
             width: 24,
             height: 24,
           ),
           label: AppStrings.my_netflix,
         ),
       ],
     ),
       body: NestedScrollView(
   //  extendBodyBehindAppBar: false,

         headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
           return <Widget>[
             SliverAppBar(
               backgroundColor: innerBoxIsScrolled
                   ? Colors.black.withOpacity(0.7)
                   : AppColors.green_black,
               expandedHeight: 50.0,
               floating: false,
               pinned: true,
               automaticallyImplyLeading: false,
               title: SvgPicture.asset(
                 AppImages.netflix_logo,
                 height: 30,
               ),
                 actions: [
                   Padding(
                     padding: const EdgeInsets.only(bottom:5,right: 20),
                     child: InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));
                       },
                         child: SvgPicture.asset(AppImages.search
                         ),
                     ),
                   ),
                 ],
             ),
           ];
         },


     // appBar: AppBar(
     //   flexibleSpace: ClipRect(
     //     child: BackdropFilter(
     //       filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
     //       child: Container(
     //           color: Colors.transparent),
     //     ),
     //   ),
     //   backgroundColor: AppColors.green_black,
     //   title: SvgPicture.asset(
     //     AppImages.netflix_logo,
     //     height: 30,
     //   ),
     //   actions: [
     //     Padding(
     //       padding: const EdgeInsets.only(bottom:5,right: 20),
     //       child: SvgPicture.asset(AppImages.search),
     //     ),
     //   ],
     // ),

     body:Column(
       children: [
         Expanded(
           child: Container(
           width: double.infinity,
           height: 756,
           decoration: const BoxDecoration(
             gradient: LinearGradient(
               begin: Alignment.topCenter,
               end: Alignment.bottomCenter,
               colors: [
                AppColors.green_black, AppColors.black],
             ),
           ),
             child: SingleChildScrollView(
               child: Column(
                 children:<Widget> [
                   Container(
                     margin: EdgeInsets.only(left: 10,right: 30),
                     height: 80,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         CustomButton(
                           label: AppStrings.tv_show,

                           onPressed: () {
                             //  click logic
                           },
                          // color: AppColors.white.withOpacity(0.3),
                           width: 95.0,
                           height: 40.0,
                           borderRadius: 20.0,
                           labelStyle: TextStyle(
                             color: AppColors.white,
                             fontSize: 15.0,
                             fontWeight: FontWeight.w400,
                           ),
                         ),
                         CustomButton(
                           label: AppStrings.movie,
                           onPressed: () {
                             //  click logic
                           },
                           // color: AppColors.white.withOpacity(0.3),
                           width: 80.0,
                           height: 40.0,
                           borderRadius: 20.0,
                           labelStyle: TextStyle(
                             color: AppColors.white,
                             fontSize: 15.0,
                             fontWeight: FontWeight.w400,
                           ),
                         ),
                         CustomButton(
                           label: AppStrings.categories,
                           onPressed: () {
                             //  click logic
                           },
                           // color: AppColors.white.withOpacity(0.3),
                           width: 100.0,
                           height: 40.0,
                           borderRadius: 20.0,
                           labelStyle: TextStyle(
                             color: AppColors.white,
                             fontSize: 15.0,
                             fontWeight: FontWeight.w400,
                           ),
                         )
                       ],
                     ),

                   ),
                   Card(
                     elevation: 4,
                     margin: EdgeInsets.all(15.0),
                     color: AppColors.green_black.withOpacity(0.09),
                     child: Stack(
                       children: [
                         ClipRRect(
                           borderRadius: BorderRadius.circular(10.0),
                           child: Container(
                             width: double.infinity,
                             height: 400,
                             child: Image.asset(
                               AppImages.bike_img1,
                               fit: BoxFit.cover,
                             ),
                           ),
                         ),
                         Positioned(
                           top: 300,
                           left: 20,
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                               AppText(
                                 text: AppStrings.rousing,
                                 fontSize: 13,
                                 fontWeight: FontWeight.bold,
                                 color: AppColors.white.withOpacity(0.7),
                               ),
                               SizedBox(width: 5,),
                               Text(
                                 "•",
                                 style: TextStyle(
                                   color: AppColors.dot_color.withOpacity(0.7),
                                   fontSize: 25,
                                   fontWeight: FontWeight.bold,
                                 ),
                               ),
                               SizedBox(width: 5,),
                               AppText(
                                 text: AppStrings.emotional,
                                 fontSize: 13,
                                 fontWeight: FontWeight.bold,
                                 color: AppColors.white.withOpacity(0.7),
                               ),
                               SizedBox(width: 5,),
                               Text(
                                 "•",
                                 style: TextStyle(
                                   color: AppColors.dot_color.withOpacity(0.7),
                                   fontSize: 25,
                                   fontWeight: FontWeight.bold,
                                 ),
                               ),
                               SizedBox(width: 5,),

                               AppText(
                                 text: AppStrings.corruption,
                                 fontSize: 13,
                                 fontWeight: FontWeight.bold,
                                 color: AppColors.white.withOpacity(0.7),
                               ),
                               SizedBox(width: 5,),
                               Text(
                                 "•",
                                 style: TextStyle(
                                   color: AppColors.dot_color.withOpacity(0.7),
                                   fontSize: 25,
                                   fontWeight: FontWeight.bold,
                                 ),
                               ),
                               SizedBox(width: 5,),
                               AppText(
                                 text: AppStrings.indian,
                                 fontSize: 13,
                                 fontWeight: FontWeight.bold,
                                 color: AppColors.white.withOpacity(0.7),
                               ),
                             ],
                           ),
                         ),
                         Positioned(
                           top: 340,
                             left: 0,
                             right: 0,
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Container(
                                   width: 130,
                                   height: 43,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(5),
                                     color: Colors.white,
                                   ),
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                       SvgPicture.asset(AppImages.play_button),
                                       SizedBox(width: 5,),
                                       AppText(
                                         text: AppStrings.play,
                                         fontSize: 14,
                                         fontWeight: FontWeight.w500,
                                         color: AppColors.black,
                                       ),
                                     ],
                                   ),

                                 ),

                                 Container(
                                   width: 130,
                                   height: 43,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(5),
                                     color: Colors.white.withOpacity(0.3),
                                   ),
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                       SvgPicture.asset(AppImages.plus_icon),
                                       SizedBox(width: 5,),
                                       AppText(
                                         text: AppStrings.my_list,
                                         fontSize: 14,
                                         fontWeight: FontWeight.w500,
                                         color: AppColors.white,
                                       ),
                                     ],
                                   ),
                                 ),
                               ],
                             ))
                       ],
                     ),
                   ),
                   Container(
                     margin: EdgeInsets.only(left: 20),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         AppText(
                           text: AppStrings.only_on_netflix,
                           fontSize: 20,
                           fontWeight: FontWeight.bold,
                           color: AppColors.white,
                         ),
                       ],
                     ),
                   ),



                   Container(
                     margin: EdgeInsets.only(left: 8, ),
                     height: 362,
                     child: ListView.builder(
                       scrollDirection: Axis.horizontal,
                       itemCount: items.length,
                       itemBuilder: (context, index) {
                         return Container(
                           margin: EdgeInsets.all(5.0),
                           color: AppColors.green_black.withOpacity(0.09),
                           child: Stack(
                             children: [
                               ClipRRect(
                                 borderRadius: BorderRadius.circular(10.0),
                                 child: Container(
                                   width: 183,
                                   height: 362,
                                   child: Image.asset(
                                     AppImages.bike_img1,
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                               ),
                               Positioned(
                                 top: 0,
                                 left: 130,
                                 right: 0,
                                 child: Container(
                                   width: 50,
                                   height: 50,
                                   child: ClipPath(
                                     clipper: RoundedTriangleClipper(),
                                     child: Container(
                                       color: Colors.red,
                                       child: Column(
                                         children: [
                                           AppText(
                                             text: AppStrings.top,
                                             fontSize: 15,
                                             fontWeight: FontWeight.bold,
                                             color: AppColors.white,

                                           ),
                                           AppText(
                                             text: AppStrings.ten,
                                             fontSize: 15,
                                             fontWeight: FontWeight.bold,
                                             color: AppColors.white,
                                           ),
                                         ],
                                       ),
                                     ),
                                   ),
                                 )

                               ),
                               Positioned(
                                 bottom: 20,
                                 left: 25,
                                 right: 25,
                                 child: Container(
                                   width: 15,
                                   height: 31,
                                   decoration: BoxDecoration(
                                       color: AppColors.red,
                                       borderRadius: BorderRadius.circular(3)
                                   ),
                                   child: Center(
                                     child: AppText(
                                       text: AppStrings.recently,
                                       fontSize: 10,
                                       fontWeight: FontWeight.bold,
                                       color: AppColors.white,
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         );
                       },
                     ),
                   ),


                   Container(
                     margin: EdgeInsets.only(left: 20),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         AppText(
                           text: AppStrings.trending,
                           fontSize: 20,
                           fontWeight: FontWeight.bold,
                           color: AppColors.white,

                         ),
                       ],

                     ),
                   ),

                   Container(
                     margin: EdgeInsets.only(left: 8, ),
                     height: 166,
                     child: ListView.builder(
                       scrollDirection: Axis.horizontal,
                       itemCount: items.length,
                       itemBuilder: (context, index) {
                         return Container(
                           margin: EdgeInsets.all(5.0),
                           color: AppColors.green_black.withOpacity(0.09),
                           child: Stack(
                             children: [
                               ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                 child: Container(
                                   width: 117,
                                   height: 166,
                                   child: Image.asset(
                                     AppImages.dummy_nature,
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                               ),
                               Positioned(
                                   top: 0,
                                   left: 80,
                                   right: 0,
                                   child: Container(
                                     width: 40,
                                     height: 30,
                                     child: ClipPath(
                                       clipper: RoundedTriangleClipper(),
                                       child: Container(
                                         color: Colors.red,
                                         child: Column(
                                           children: [
                                             AppText(
                                               text: AppStrings.top,
                                               fontSize: 10,
                                               fontWeight: FontWeight.bold,
                                               color: AppColors.white,

                                             ),
                                             AppText(
                                               text: AppStrings.ten,
                                               fontSize: 10,
                                               fontWeight: FontWeight.bold,
                                               color: AppColors.white,
                                             ),
                                           ],
                                         ),
                                       ),
                                     ),
                                   )

                               ),
                               Positioned(
                                 bottom: 0,
                                 left: 20,
                                 right: 20,
                                 child: Container(
                                   width: 15,
                                   height: 31,
                                   decoration: BoxDecoration(
                                       color: AppColors.red,
                                       borderRadius: BorderRadius.circular(3)
                                   ),
                                   child: Center(
                                     child: AppText(
                                       text: AppStrings.new_season,
                                       fontSize: 10,
                                       fontWeight: FontWeight.bold,
                                       color: AppColors.white,
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         );
                       },
                     ),
                   ),

                   Container(
                     margin: EdgeInsets.only(left: 20,right: 15),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         AppText(
                           text: AppStrings.game,
                           fontSize: 20,
                           fontWeight: FontWeight.bold,
                           color: AppColors.white,
                         ),
                         AppText(
                           text: AppStrings.my_list_arrow,
                           fontSize: 20,
                           fontWeight: FontWeight.bold,
                           color: AppColors.white,
                         ),
                       ],

                     ),
                   ),

                   Container(
                     margin: EdgeInsets.only(left: 8, ),
                     height: 170,
                     child: ListView.builder(
                       scrollDirection: Axis.horizontal,
                       itemCount: items.length,
                       itemBuilder: (context, index) {
                         return Container(
                           margin: EdgeInsets.all(5.0),
                           color: AppColors.green_black.withOpacity(0.09),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                             ClipRRect(
                                   borderRadius: BorderRadius.circular(10.0),
                                   child: Container(
                                     width: 119,
                                     height: 119,
                                     child: Image.asset(
                                       AppImages.lake_img,
                                       fit: BoxFit.cover,
                                     ),
                                   ),
                                 ),
                               SizedBox(height: 2,),
                               AppText(
                                 text: AppStrings.vikings,
                                 fontSize: 13,
                                 fontWeight: FontWeight.w500,
                                 color: AppColors.white,
                               ),
                               SizedBox(height: 2,),
                               AppText(
                                 text: AppStrings.strategy,
                                 fontSize: 12,
                                 fontWeight: FontWeight.w400,
                                 color: AppColors.white,

                               ),
                             ],
                           ),
                         );
                       },
                     ),
                   ),

                 ],
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

  Widget CustomButton({
    required String label,
    VoidCallback? onPressed,
    //Color color = Colors.transparent,
     double width= double.infinity,
     double height  = 50.0,
     double borderRadius = 8.0,
    TextStyle? labelStyle,
    Color borderColor = Colors.white,
    double borderWidth = 1.0,
  }){

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        //color: color,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: borderColor,width: borderWidth),
      ),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            label,
            style: labelStyle ?? TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
    );

  }


}

class RoundedTriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final radius = 20.0; // Adjust this value for the desired curve

    path.lineTo(0, size.height - radius);
    path.arcToPoint(
      Offset(radius, size.height),
      radius: Radius.circular(radius),
      clockwise: false,
    );
    path.lineTo(size.width - radius, size.height);
    path.arcToPoint(
      Offset(size.width, size.height - radius),
      radius: Radius.circular(radius),
      clockwise: false,
    );
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
