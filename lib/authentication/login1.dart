import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:vishayam/authentication/forgotopassword.dart';
import 'package:vishayam/authentication/verify.dart';
import 'package:vishayam/create/register.dart';

class loginscreen extends StatelessWidget {
  const loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 30),
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0x00ffffff).withOpacity(1.0),
              Color(0x00999999).withOpacity(1.0)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.infinity,
              height: 620,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0x0092e1e2).withOpacity(1.0),
                  Color(0x000d4671).withOpacity(1.0)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(190),
                    bottomRight: Radius.circular(190)),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Column(children: [
                Image.asset(
                  'assets/login/logo.png',
                  width: 95,
                  height: 79,
                ),
                const SizedBox(
                  height: 20,
                ),
                GradientText('SoftLocker',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                    colors: [
                      Color(0x002b2a7b).withOpacity(1.0),
                      Color(0x000071a5).withOpacity(1.0),
                    ]),
                const SizedBox(
                  height: 30,
                ),
                Container(
                    alignment: Alignment.center,
                    width: 348,
                    height: 397,
                    decoration: BoxDecoration(
                      color: Color(0x00e7ebeb).withOpacity(1.0),
                      borderRadius: BorderRadius.circular(62),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 0, 0, 0)
                              .withOpacity(0.5), // Shadow color
                          spreadRadius: 0, // Spread radius
                          blurRadius: 7.1, // Blur radius
                          offset: Offset(0, 3), // Offset in x and y direction
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'LOGIN',
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w500,
                            color: Color(0x00273b4a).withOpacity(1.0),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        //form
                        Column(
                          children: [
                            //email
                            Container(
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
                                  //whitebox
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      width: 275,
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                        color:
                                            Color(0x00fff5f5).withOpacity(1.0),
                                        borderRadius: BorderRadius.circular(19),
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText:
                                              'Enter your email', // Placeholder text
                                          hintStyle: TextStyle(
                                              color: const Color.fromARGB(
                                                  255,
                                                  129,
                                                  129,
                                                  129)), // Style of the hint text
                                          border: InputBorder
                                              .none, // Remove the default underline border
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 16.0), // Add padding
                                        ),
                                        style: TextStyle(
                                          color: Colors
                                              .black, // Style for the input text
                                          fontSize: 16.0,
                                        ),
                                        keyboardType: TextInputType
                                            .emailAddress, // Keyboard optimized for email input
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment
                                        .centerRight, // Aligns the SVG to the rightmost
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          right:
                                              10.0), // Add padding to the right
                                      child: SvgPicture.asset(
                                        'assets/login/email.svg',
                                        height: 24, // Adjust SVG size as needed
                                        width: 24,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            //password
                            Container(
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
                                        color:
                                            Color(0x00fff5f5).withOpacity(1.0),
                                        borderRadius: BorderRadius.circular(19),
                                      ),
                                      child: TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          hintText:
                                              'Enter your Password', // Placeholder text
                                          hintStyle: TextStyle(
                                              color: const Color.fromARGB(
                                                  255,
                                                  129,
                                                  129,
                                                  129)), // Style of the hint text
                                          border: InputBorder
                                              .none, // Remove the default underline border
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 16.0), // Add padding
                                        ),
                                        style: TextStyle(
                                          color: Colors
                                              .black, // Style for the input text
                                          fontSize: 16.0,
                                        ),
                                        keyboardType: TextInputType
                                            .visiblePassword, // Keyboard optimized for password input
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment
                                        .centerRight, // Aligns the SVG to the rightmost
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          right:
                                              10.0), // Add padding to the right
                                      child: SvgPicture.asset(
                                        'assets/login/pass.svg',
                                        height: 24, // Adjust SVG size as needed
                                        width: 24,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => forgott()),
                                  );
                                },
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 7, 7,
                                        7), // Color of the text (customize as needed)
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Verify()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  foregroundColor:
                                      const Color(0x00ffffff).withOpacity(1.0),
                                  backgroundColor: const Color(0x000d4671)
                                      .withOpacity(1.0), // Text color
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(19))
                                  // Shadow effect
                                  ),
                              child: Text('Login'),
                            )
                          ],
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 2,
                      indent: 32,
                      endIndent: 8,
                      color: Colors.black,
                    )),
                    Text(
                      'Or Login with',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 2,
                      indent: 8,
                      endIndent: 32,
                      color: Colors.black,
                    )),
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/login/google.png')),

                const SizedBox(
                  height: 20,
                ),

                // Register Now
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Register()),
                    );
                  },
                  child: RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'Register Now',
                          style: TextStyle(
                              color: Color(0x000071a5).withOpacity(1.0),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
