import 'package:flutter/material.dart';

import 'package:firebase_app/auth_controller.dart';
import 'package:firebase_app/core/constants/asseth_path.dart';

class HomePage extends StatelessWidget {
  String email;
  HomePage({
    Key? key,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: 400,
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
              Text(
                'Hello World',
                style: TextStyle(fontSize: 30),
              ),
              Text(email, style: TextStyle(fontSize: 18)),

              GestureDetector(
                onTap: (() {
                  AuthController.instance.logOut();
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
                    'Sign Out',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  )),
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
