import 'package:ecommerce_app_api/app_widgets/my_text_button.dart';
import 'package:ecommerce_app_api/constrants/app_colors.dart';
import 'package:ecommerce_app_api/screen/auth/register_screen.dart';
import 'package:ecommerce_app_api/screen/dashboard_screen.dart';
import 'package:ecommerce_app_api/utils/custom_text_style.dart';
import 'package:flutter/material.dart';
import '../../app_widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  MediaQueryData? mqData;
  @override
  Widget build(BuildContext context) {
    mqData = MediaQuery.of(context);
    return Scaffold(
      body: Center(
        child: Stack(alignment: Alignment.center, children: [
          Opacity(
            opacity: 1,
            child: Image.asset(
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
                "assets/image/background1.jpg"),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black26,
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// -----------------Heading text ----------------------- ///
                 Text(
                  " Welcome Back!",
                  style: mTextStyle25(mColor: Colors.white , mFontWeight: FontWeight.bold)
                ),
                const SizedBox(
                  height: 20,
                ),

                /// ----------------------Top box---------------------------///
                ClipPath(
                  clipper: DifferentSidesClipper(),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: mqData!.size.width,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xe7a0bfff),
                      ),
                      child: Center(
                          child: Stack(children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomTextField(
                                controller: emailController,
                                label: "User email",
                                hintText: "Enter here email",
                                sufficeIcon: Icons.account_circle_outlined,
                                prefixIcon: Icons.email_outlined,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomTextField(
                                controller: passwordController,
                                label: "User email",
                                hintText: "Enter here email",
                                sufficeIcon: Icons.remove_red_eye,
                                prefixIcon: Icons.lock,
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            )
                          ],
                        ),

                        /// ------- Login Button ------Arrow button------------------///
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: FloatingActionButton(
                            backgroundColor: AppColors.primaryColor,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100)),
                            onPressed: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (cntext) => DashBordScreen()));

                            },
                            child: const Icon(
                              Icons.arrow_forward,
                              size: 30,
                              shadows: [
                                Shadow(color: Colors.black, blurRadius: 4)
                              ],
                            ),
                          ),
                        )
                      ])),
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
                          color: const Color(0xe7a0bfff)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: mqData!.size.height * 0.05),
                            const Text(
                              'Don\'t have an Account?',
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
                                  buttonText: "Sign up ",
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RegisterScreen()));
                                  },
                                  buttonColor: Colors.black54,
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

// Custom Clipper for different side heights
class DifferentSidesClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // Define different heights for each side
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
