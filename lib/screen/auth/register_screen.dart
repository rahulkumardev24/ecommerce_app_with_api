
import 'package:ecommerce_app_api/app_widgets/my_text_button.dart';
import 'package:ecommerce_app_api/constrants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../app_widgets/custom_text_field.dart';
import '../../utils/custom_text_style.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  MediaQueryData? mqData;
  @override
  Widget build(BuildContext context) {
    mqData = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        // Added SingleChildScrollView for scrolling
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Opacity(
                opacity: 1,
                child: Image.asset(
                  height: mqData!
                      .size.height, // Ensure the image covers full height
                  width: double.infinity,
                  fit: BoxFit.cover,
                  "assets/image/background1.jpg",
                ),
              ),
              Container(
                height: mqData!.size.height,
                width: double.infinity,
                color: Colors.black26,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),

                    /// -----------------Heading text ----------------------- ///
                    Text(
                      "Create Your Account",
                      style: mTextStyle25(mFontWeight: FontWeight.bold , mColor: Colors.white),
                    ),

                    /// ----------------------Top box---------------------------///
                    ClipPath(
                      clipper: DifferentSidesClipper(),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: mqData!.size.width,
                          height: mqData!.size.height * 0.62,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xe7a0bfff),
                          ),
                          child: Center(
                            child: Stack(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    /// email box
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CustomTextField(
                                        controller: nameController,
                                        label: "name",
                                        hintText: "Enter name",
                                        sufficeIcon: Icons.verified_user,
                                        prefixIcon: Icons.person,
                                      ),
                                    ),

                                    /// email box
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CustomTextField(
                                        controller: emailController,
                                        label: "email",
                                        hintText: "Enter email",
                                        sufficeIcon:
                                        Icons.account_circle_outlined,
                                        prefixIcon: Icons.email_outlined,
                                      ),
                                    ),


                                    /// number
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CustomTextField(
                                        controller: numberController,
                                        label: "number",
                                        hintText: "Enter number",
                                        sufficeIcon: Icons.call,
                                        prefixIcon: Icons.phone_android,
                                      ),
                                    ),

                                    /// gender
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CustomTextField(
                                        controller: genderController,
                                        label: "gender",
                                        hintText: "Enter gender",
                                        prefixIcon: Icons.man,
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CustomTextField(
                                        controller: passwordController,
                                        label: "password",
                                        hintText: "Enter password",
                                        sufficeIcon: Icons.remove_red_eye,
                                        prefixIcon: Icons.lock,
                                      ),
                                    ),
                                    /// confirm password
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CustomTextField(
                                        controller: passwordConfirmController,
                                        label: "confirm Password",
                                        hintText: "Enter confirm Password",
                                        sufficeIcon:
                                        Icons.remove_red_eye,
                                        prefixIcon: Icons.lock,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 70,
                                    )
                                  ],
                                ),

                                /// ----Register Button ---------Arrow button------------------///
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: FloatingActionButton(

                                    backgroundColor: AppColors.primaryColor,
                                    foregroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    onPressed: () {  },
                                    child: const Icon(
                                      Icons.arrow_forward,
                                      size: 30,
                                      shadows: [
                                        Shadow(
                                            color: Colors.black, blurRadius: 4)
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    ///------------------------bottom-------------box------------------------///
                    ClipPath(
                      clipper: BottomSidesClipper(),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: mqData!.size.width,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xe7a0bfff),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: mqData!.size.height * 0.05),
                                const Text(
                                  'Already have an Account?',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: mqData!.size.width * 0.7,
                                  height: mqData!.size.height * 0.05,
                                  child: MyTextButton(
                                      buttonText: "Login",
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                const LoginScreen()));
                                      }, buttonColor: Colors.black54,),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Custom Clipper for different side heights
class DifferentSidesClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(-20, size.height - 100);
    path.close(); // Complete the box
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

// Bottom Clipper for different side heights
class BottomSidesClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, -0);
    path.lineTo(size.width, 100);
    path.lineTo(size.width, size.height + 10);
    path.lineTo(0, size.height);
    path.close(); // Complete the box

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}