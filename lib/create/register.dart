import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:vishayam/authentication/login1.dart';
import 'package:vishayam/onboarding/onboarding.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            reverse: true,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: screenHeight * 1.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0x0092e1e2).withOpacity(1.0),
                            Color(0x000d4671).withOpacity(1.0),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 40,
                          ),
                          Image.asset(
                            'assets/login/logo.png',
                            width: 70,
                            height: 60,
                          ),
                          const SizedBox(height: 20),
                          GradientText(
                            'SoftLocker',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                            colors: [
                              Color(0x002b2a7b).withOpacity(1.0),
                              Color(0x000071a5).withOpacity(1.0),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Container(
                            width: 348,
                            decoration: BoxDecoration(
                              color: Color(0x00e7ebeb).withOpacity(1.0),
                              borderRadius: BorderRadius.circular(62),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Column(
                                children: [
                                  Text(
                                    'Register',
                                    style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  ..._buildInputFields(),
                                  const SizedBox(height: 20),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => onboard(),
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: Colors.white,
                                      backgroundColor:
                                          Color(0x000d4671).withOpacity(1.0),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 50,
                                        vertical: 20,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(19),
                                      ),
                                    ),
                                    child: Text('Create Account'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Divider(
                                  thickness: 2,
                                  indent: 32,
                                  endIndent: 8,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'Or Register with',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              Expanded(
                                child: Divider(
                                  thickness: 2,
                                  indent: 8,
                                  endIndent: 32,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset('assets/login/google.png'),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => loginscreen(),
                                ),
                              );
                            },
                            child: RichText(
                              text: TextSpan(
                                text: "Already have an account? ",
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                    text: 'Login Now',
                                    style: TextStyle(
                                      color: Color(0x0092e1e2).withOpacity(1.0),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
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
        },
      ),
    );
  }

  List<Widget> _buildInputFields() {
    return [
      _buildInputField('Enter your Username', 'assets/login/user.svg',
          TextInputType.emailAddress),
      const SizedBox(height: 10),
      _buildInputField('Enter your Mobile Number', 'assets/login/mobile.svg',
          TextInputType.number),
      const SizedBox(height: 10),
      _buildInputField('Enter your E-mail', 'assets/login/email.svg',
          TextInputType.emailAddress),
      const SizedBox(height: 10),
      _buildInputField('Enter your Password', 'assets/login/eye.svg',
          TextInputType.visiblePassword,
          obscureText: true),
      const SizedBox(height: 10),
      _buildInputField('Confirm your Password', 'assets/login/eye.svg',
          TextInputType.visiblePassword,
          obscureText: true),
    ];
  }

  Widget _buildInputField(
      String hint, String assetPath, TextInputType inputType,
      {bool obscureText = false}) {
    return Container(
      alignment: Alignment.center,
      width: 314,
      height: 56,
      decoration: BoxDecoration(
        color: Color(0x000d4671).withOpacity(1.0),
        borderRadius: BorderRadius.circular(19),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 275,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0x00fff5f5).withOpacity(1.0),
                borderRadius: BorderRadius.circular(19),
              ),
              child: TextField(
                obscureText: obscureText,
                decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 129, 129, 129),
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                ),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
                keyboardType: inputType,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: SvgPicture.asset(
                assetPath,
                height: 24,
                width: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
