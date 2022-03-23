import 'package:firebase_app/auth_controller.dart';
import 'package:firebase_app/core/constants/asseth_path.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    // List images = [
    //   'assets/img/g.png',
    //   'assets/img/t.png',
    //   'assets/img/f.png',
    // ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 500,
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AssetsPath().signUpPNG),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: 330,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          offset: const Offset(1, 1),
                          color: Colors.grey.withOpacity(0.5))
                    ]),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.email),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(color: Colors.white, width: 1))),
                ),
              ),
              Container(
                width: 330,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          offset: const Offset(1, 1),
                          color: Colors.grey.withOpacity(0.5))
                    ]),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: const Icon(Icons.password),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(color: Colors.white, width: 1))),
                ),
              ),
              GestureDetector(
                onTap: (() {
                  AuthController.instance.register(emailController.text.trim(),
                      passwordController.text.trim());
                }),
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage(
                            AssetsPath().loginBtnPNG,
                          ),
                          fit: BoxFit.cover)),
                  child: const Center(
                      child: Text(
                    'Sign up',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  )),
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'Have an account?',
                  style: TextStyle(color: Colors.grey[500], fontSize: 16),

                  recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
                  // ignore: prefer_const_literals_to_create_immutables
                ),
              ),
              // Wrap(
              //     children: List<Widget>.generate(3, (index) {
              //   return CircleAvatar(
              //     radius: 30,
              //     backgroundColor: Colors.grey[500],
              //     child: CircleAvatar(
              //       radius: 25,
              //       backgroundImage: AssetImage('assets/img/' + images[index]),
              //     ),
              //   );
              // }))
            ],
          ),
        ),
      ),
    );
  }
}
