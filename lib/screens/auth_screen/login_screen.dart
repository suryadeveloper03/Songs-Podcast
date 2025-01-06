import 'package:flutter/material.dart';
import 'package:pcast/screens/home_page.dart';
import 'package:pcast/variables/AppColors.dart';
import 'package:pcast/variables/AppValues.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.of(context).size.height, // Set container height
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Image.asset(
                'assets/loginBackground.png',
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              Container(
                /* width: 100, */
                height: (MediaQuery.of(context).size.height * 0.95),
                width: (MediaQuery.of(context).size.width * 0.90),
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor.withOpacity(0.9),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(50),
                  ),
                ),
                /* alignment: Alignment.topLeft, */
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 50, left: 30, right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/logo/${AppValues.logoName}'),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            "Episodic series of \n digital audio.",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email_outlined),
                              hintText: 'E-mail Address',
                              hintStyle: TextStyle(color: AppColors.greyText),
                              border: AppColors.inputBorder,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.key),
                              hintText: 'Password',
                              hintStyle: TextStyle(color: AppColors.greyText),
                              border: AppColors.inputBorder,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: AppColors.themeBtnColor,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue,
                                  spreadRadius: 2,
                                  blurRadius: 3,
                                )
                              ],
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(),
                                  ),
                                );
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forgot Password",
                                style: TextStyle(
                                  color: AppColors.greyText,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColors.greyText,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.5),
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Login with Facebook",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.5),
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Login with Email",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
