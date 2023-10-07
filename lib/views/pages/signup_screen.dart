import 'package:finefound/views/pages/Vhome_screen.dart';
import 'package:finefound/views/pages/navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';

import 'login_screen.dart';

class SignUpscreen extends StatefulWidget {
  const SignUpscreen({super.key});

  @override
  State<SignUpscreen> createState() => _SignUpscreenState();
}

class _SignUpscreenState extends State<SignUpscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 8, 104, 221),
      ),
      body: Column(
        children: [
          Container(
            // color: Colors.red,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 8, 104, 221),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(250),
                          bottomRight: Radius.circular(250))),
                  width: double.infinity,
                  height: 250,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 55.0, right: 55),
                    child: Image.asset(
                      "assets/icons/Logo.png",
                    ),
                  ),
                ),
                Positioned.fill(
                  bottom: -60,
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        'assets/icons/logo1.png',
                        width: 130,
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '-',
                            style: TextStyle(fontSize: 30),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Create Account',
                            style: TextStyle(fontSize: 25),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '-',
                            style: TextStyle(fontSize: 30),
                          )
                        ],
                      ),
                      Text(
                        'Create your Free Account & Get Started',
                        style: TextStyle(fontSize: 14),
                        maxLines: 2,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    // flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          // controller: _textEditingController,
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(255, 242, 242, 242),
                            filled: true,
                            enabledBorder: InputBorder.none,
                            // labelText: 'Enter your name',
                            hintText: 'Username',
                            // icon: Icon(Icons.person),
                            prefixIcon: Icon(
                              Icons.person_2_outlined,
                              color: Color.fromARGB(255, 1, 108, 195),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          // validator: (value) {
                          //   // if (value.isEmpty) {
                          //   //   return 'Please enter your name';
                          //   // }
                          //   // return null;
                          // },
                          // keyboardType: TextInputType.text,
                          // textCapitalization: TextCapitalization.words,
                          // textInputAction: TextInputAction.next,
                          // autofocus: true,
                          // maxLength: 50,
                          onChanged: (value) {
                            // Add your onChanged logic here
                          },
                          onFieldSubmitted: (value) {
                            // Add your onFieldSubmitted logic here
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          // controller: _textEditingController,
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(255, 242, 242, 242),
                            filled: true,
                            enabledBorder: InputBorder.none,
                            // labelText: 'Enter your name',
                            hintText: 'Email',
                            // icon: Icon(Icons.person),
                            prefixIcon: Icon(
                              Icons.mail_outline,
                              color: Color.fromARGB(255, 1, 108, 195),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          // validator: (value) {
                          //   // if (value.isEmpty) {
                          //   //   return 'Please enter your name';
                          //   // }
                          //   // return null;
                          // },
                          // keyboardType: TextInputType.text,
                          // textCapitalization: TextCapitalization.words,
                          // textInputAction: TextInputAction.next,
                          // autofocus: true,
                          // maxLength: 50,
                          onChanged: (value) {
                            // Add your onChanged logic here
                          },
                          onFieldSubmitted: (value) {
                            // Add your onFieldSubmitted logic here
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          // controller: _textEditingController,
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(255, 242, 242, 242),
                            filled: true,
                            enabledBorder: InputBorder.none,
                            // labelText: 'Enter your name',
                            hintText: 'Password',
                            // icon: Icon(Icons.person),
                            prefixIcon: Icon(
                              Icons.lock_open_outlined,
                              color: Color.fromARGB(255, 1, 108, 195),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          // validator: (value) {
                          //   // if (value.isEmpty) {
                          //   //   return 'Please enter your name';
                          //   // }
                          //   // return null;
                          // },
                          // keyboardType: TextInputType.text,
                          // textCapitalization: TextCapitalization.words,
                          // textInputAction: TextInputAction.next,
                          // autofocus: true,
                          // maxLength: 50,
                          onChanged: (value) {
                            // Add your onChanged logic here
                          },
                          onFieldSubmitted: (value) {
                            // Add your onFieldSubmitted logic here
                          },
                        ),
                        // Text('Forgot Password?'),
                      ],
                    ),
                  ),
                  Expanded(
                    // flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 80),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      30.0), // Adjust the radius as needed
                                ),
                                primary: Color.fromARGB(255, 8, 104,
                                    221), // Change this color to customize the button's background color
                              ),
                              onPressed: () {
                                // Add your button's functionality here
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyHome()),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 10),
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(fontSize: 18),
                                ),
                              )),
                          Center(child: Text('or via')),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset('assets/images/facebook.svg'),
                              SvgPicture.asset('assets/images/google.svg'),
                              SvgPicture.asset('assets/images/apple.svg')
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginScreen()),
                                  );
                                },
                                child: Text(
                                  ' Sign In',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 1, 99, 179)),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
