import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone_flutter/Content_categories/home_page_view.dart';
import 'package:netflix_clone_flutter/utils/AppStrings.dart';

import '../utils/AppColors.dart';

class SignInScreen extends StatefulWidget{
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:Container(
       width: double.infinity,
       height: double.infinity,
       decoration: BoxDecoration(
         color: AppColors.black
       ),
       child: Stack(
         children: [

           Positioned(
             top: 40,
             left: 20,
             child: Row(
             children: [
             IconButton(
                 onPressed: (){},
                 icon: Icon(Icons.arrow_back,color: AppColors.white,size: 25,),
             ),
             SizedBox(width: 33,),

               AppText(
                 text: AppStrings.natflix,
                 fontWeight: FontWeight.w500,
                 fontSize: 36,
                 color: AppColors.red_dark
               ),
           ],
           ),
           ),
           Positioned(
             top: 143,
               left: 22,
               right: 22,
               child: Column(
                 children: [
                   CustomTextField(
                     labelText: AppStrings.email_or_password,
                   ),

                   SizedBox(height: 25,),
                   CustomTextField(
                     labelText: AppStrings.password,
                   ),

                   SizedBox(height: 25,),
                   InkWell(
                     onTap:(){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePageView()));},
                     child: Container(
                       width: double.infinity,
                       height: 60,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(8),
                         border: Border.all(
                           color: Colors.grey,
                           width: 1.0,
                         )
                       ),
                       child: Align(
                         alignment: Alignment.center,
                         child: AppText(
                             text: AppStrings.signIn,
                           fontSize: 18,
                           fontWeight: FontWeight.w300,
                           textAlign: TextAlign.center,
                         ),
                       ),
                     ),
                   ),
                   SizedBox(height: 33,),
                   AppText(
                     text: AppStrings.need_help,
                     fontSize: 18,
                     fontWeight: FontWeight.w300,
                     textAlign: TextAlign.center,
                   ),

                   SizedBox(height: 16,),
                   AppText(
                     text: AppStrings.new_to_natflix,
                     fontSize: 18,
                     fontWeight: FontWeight.w300,
                     textAlign: TextAlign.center,
                   ),
                 ],
               ),
           ),

           Positioned(
             top: 550,
               left: 30,
               right:30,
               child:AppText(
                 text: AppStrings.signin_protected_by,
                 fontSize: 12,
                 fontWeight: FontWeight.w300,
                 textAlign: TextAlign.center,
               ),
           ),
         ],
       ),
     ) ,
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
      padding: const EdgeInsets.fromLTRB(10,2,10,2),

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