import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone_flutter/utils/AppColors.dart';
import 'package:netflix_clone_flutter/utils/AppImages.dart';

import '../utils/AppStrings.dart';

class NewHotScreen extends StatefulWidget{
  @override
  State<NewHotScreen> createState() => _NewHotScreenState();
}

class _NewHotScreenState extends State<NewHotScreen> {
  final List<String> items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"];
  bool isButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              height: 756,
              decoration: BoxDecoration(
                color: AppColors.black,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:20,left: 20,right: 20),
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(AppImages.view_more_svg,color: AppColors.white,),
                          Row(
                            children: [
                              SvgPicture.asset(AppImages.cast_logo_svg),
                              SizedBox(width: 20,),
                              SvgPicture.asset(AppImages.search),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10,right: 10),
                      height: 80,
                     // color: Colors.lightBlueAccent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomButton(
                            label: AppStrings.top_pick,
                            onPressed: () {
                              setState(() {
                                isButtonPressed = !isButtonPressed;
                              });
                              //  click logic
                            },
                            width: 140.0,
                            height: 40.0,
                            borderRadius: 20.0,
                            backgroundColor: isButtonPressed ? Colors.white : Colors.transparent,
                            borderColor: AppColors.white,
                            labelStyle: TextStyle(
                              color: isButtonPressed ? AppColors.black : AppColors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          CustomButton(
                            label: AppStrings.coming_soon,
                            onPressed: () {
                              setState(() {
                                isButtonPressed = !isButtonPressed;
                              });
                              //  click logic
                            },
                            width: 110.0,
                            height: 40.0,
                            borderRadius: 20.0,
                            backgroundColor: isButtonPressed ? Colors.white : Colors.transparent,
                            borderColor: AppColors.white,
                            labelStyle: TextStyle(
                              color: isButtonPressed ? AppColors.black : AppColors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          CustomButton(
                            label: AppStrings.game,
                            onPressed: () {
                              //  click logic
                            },
                            width: 60.0,
                            height: 40.0,
                            borderRadius: 20.0,
                            borderColor: AppColors.white,
                            labelStyle: TextStyle(
                              color: AppColors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),

                    ),

                    // Container(
                    //   width: double.infinity,
                    //   height: 427 * items.length.toDouble(),
                    //   child: ListView.builder(
                    //     shrinkWrap: true,
                    //     itemCount: items.length,
                    //     itemBuilder: (BuildContext context, int index) {
                    //       return  Container(
                    //         margin: EdgeInsets.only(left: 20,right: 20),
                    //         width: double.infinity,
                    //         height: 427,
                    //         decoration: BoxDecoration(
                    //             border: Border.all(color: AppColors.white,width: 0.06),
                    //             borderRadius: BorderRadius.circular(10)
                    //         ),
                    //         child: Stack(
                    //           children: [
                    //             ClipRRect(
                    //               borderRadius: BorderRadius.circular(10.0),
                    //               child: Container(
                    //                 width: double.infinity,
                    //                 height: 219,
                    //                 child: Image.asset(
                    //                   AppImages.bike_img1,
                    //                   fit: BoxFit.cover,
                    //                 ),
                    //               ),
                    //             ),
                    //             Positioned(
                    //               top: 10,
                    //               right: 10,
                    //               child:Container(
                    //                 padding: EdgeInsets.all(5),
                    //                 decoration: BoxDecoration(
                    //                   borderRadius: BorderRadius.circular(4.0),
                    //                   color: Colors.black38,
                    //                 ),
                    //                 child: AppText(
                    //                   text: AppStrings.ua,
                    //                   fontWeight: FontWeight.bold,
                    //                   fontSize: 15,
                    //                   color: AppColors.white,
                    //                 ),
                    //               ),
                    //             ),
                    //             Positioned(
                    //               top: 230,
                    //               left: 15,
                    //               right: 25,
                    //               child: Column(
                    //                 crossAxisAlignment: CrossAxisAlignment.start,
                    //                 children: [
                    //                   AppText(
                    //                     text: AppStrings.series,
                    //                     fontWeight: FontWeight.bold,
                    //                     fontSize: 15,
                    //                     color: AppColors.white,
                    //                   ),
                    //                   AppText(
                    //                     text: AppStrings.one_piece,
                    //                     fontWeight: FontWeight.bold,
                    //                     fontSize: 32,
                    //                     color: AppColors.white,
                    //                   ),
                    //                   Row(
                    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //                     children: [
                    //                       CustomButton(
                    //                         backgroundColor: AppColors.light_black,
                    //                         label: AppStrings.rousing,
                    //                         onPressed: () {
                    //                           //  click logic
                    //                         },
                    //                         width: 75.0,
                    //                         height: 26.0,
                    //                         borderRadius: 6.0,
                    //                         labelStyle: TextStyle(
                    //                           color: AppColors.white,
                    //                           fontSize: 13.0,
                    //                           fontWeight: FontWeight.bold,
                    //                         ),
                    //                       ),
                    //                       CustomButton(
                    //                         backgroundColor: AppColors.light_black,
                    //                         label: AppStrings.adventure,
                    //                         onPressed: () {
                    //                           //  click logic
                    //                         },
                    //                         width: 81.0,
                    //                         height: 26.0,
                    //                         borderRadius: 6.0,
                    //                         labelStyle: TextStyle(
                    //                           color: AppColors.white,
                    //                           fontSize: 13.0,
                    //                           fontWeight: FontWeight.bold,
                    //                         ),
                    //                       ),
                    //                       CustomButton(
                    //                         backgroundColor: AppColors.light_black,
                    //                         label: AppStrings.visually_striking,
                    //                         onPressed: () {
                    //                           //  click logic
                    //                         },
                    //                         width: 110.0,
                    //                         height: 26.0,
                    //                         borderRadius: 6.0,
                    //                         labelStyle: TextStyle(
                    //                           color: AppColors.white,
                    //                           fontSize: 13.0,
                    //                           fontWeight: FontWeight.bold,
                    //                         ),
                    //                       ),
                    //                     ],
                    //                   ),
                    //
                    //                   SizedBox(height: 20,),
                    //                   Row(
                    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //                     children: [
                    //                       Row(
                    //                         children: [
                    //                           Container(
                    //                             width: 50,
                    //                             height: 50,
                    //                             decoration: BoxDecoration(
                    //                               borderRadius: BorderRadius.circular(50.0),
                    //                               color: Colors.white,
                    //                             ),
                    //                             child: Icon(Icons.add,size: 30,),
                    //                           ),
                    //                           SizedBox(width: 15,),
                    //                           Container(
                    //                             width: 50,
                    //                             height: 50,
                    //                             decoration: BoxDecoration(
                    //                               borderRadius: BorderRadius.circular(50.0),
                    //                               color: AppColors.light_black,
                    //                             ),
                    //                             child: Icon(Icons.play_arrow,color: AppColors.white,size: 30,),
                    //                           ),
                    //                         ],
                    //                       ),
                    //
                    //                       SvgPicture.asset(AppImages.info)
                    //                     ],
                    //                   )
                    //                 ],
                    //               ),
                    //             )
                    //
                    //           ],
                    //         ),
                    //       );
                    //     },
                    //   ),
                    // ),

                    Container(
                      width: double.infinity,
                      child: SingleChildScrollView(
                        child: Column(
                          children: items.map((item) {
                            return Container(
                              margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                              width: double.infinity,
                              height: 420,
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.white, width: 0.06),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            child: Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(10.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 219,
                                            child: Image.asset(
                                              AppImages.bike_img1,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 10,
                                          right: 10,
                                          child:Container(
                                            padding: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(4.0),
                                              color: Colors.black38,
                                            ),
                                            child: AppText(
                                              text: AppStrings.ua,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: AppColors.white,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 230,
                                          left: 15,
                                          right: 25,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(left: 30.0),
                                                child: AppText(
                                                  text: AppStrings.series,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: AppColors.white,
                                                ),
                                              ),
                                              AppText(
                                                text: AppStrings.one_piece,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 32,
                                                color: AppColors.white,
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  CustomButton(
                                                    backgroundColor: AppColors.light_black,
                                                    label: AppStrings.rousing,
                                                    onPressed: () {
                                                      //  click logic
                                                    },
                                                    width: 75.0,
                                                    height: 26.0,
                                                    borderRadius: 6.0,
                                                    labelStyle: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 13.0,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                  CustomButton(
                                                    backgroundColor: AppColors.light_black,
                                                    label: AppStrings.adventure,
                                                    onPressed: () {
                                                      //  click logic
                                                    },
                                                    width: 81.0,
                                                    height: 26.0,
                                                    borderRadius: 6.0,
                                                    labelStyle: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 13.0,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                  CustomButton(
                                                    backgroundColor: AppColors.light_black,
                                                    label: AppStrings.visually_striking,
                                                    onPressed: () {
                                                      //  click logic
                                                    },
                                                    width: 110.0,
                                                    height: 26.0,
                                                    borderRadius: 6.0,
                                                    labelStyle: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 13.0,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),

                                              SizedBox(height: 20,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        width: 50,
                                                        height: 50,
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(50.0),
                                                          color: Colors.white,
                                                        ),
                                                        child: Icon(Icons.add,size: 30,),
                                                      ),
                                                      SizedBox(width: 15,),
                                                      Container(
                                                        width: 50,
                                                        height: 50,
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(50.0),
                                                          color: AppColors.light_black,
                                                        ),
                                                        child: Icon(Icons.play_arrow,color: AppColors.white,size: 30,),
                                                      ),
                                                    ],
                                                  ),

                                                  SvgPicture.asset(AppImages.info)
                                                ],
                                              )
                                            ],
                                          ),
                                        )

                                      ],
                                    ),
                            );
                          }).toList(),
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget CustomButton({
    required String label,
    VoidCallback? onPressed,
    Color color = Colors.transparent,
    double width= double.infinity,
    double height  = 50.0,
    double borderRadius = 8.0,
    TextStyle? labelStyle,
    Color? borderColor,
    double borderWidth = 1.0,
    Color? backgroundColor,
  }){

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.transparent,
          borderRadius: BorderRadius.circular(borderRadius),
          border: borderColor != null
              ? Border.all(color: borderColor, width: borderWidth)
              : null,
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