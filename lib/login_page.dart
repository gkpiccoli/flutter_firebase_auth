import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Firebase Login')),
      body:  SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.black,
                )
              ),
              width: MediaQuery.of(context).size.width * .7,
              child: const TextField(
                style: TextStyle(color: Colors.black, fontSize: 20),
                decoration: InputDecoration(
                  hintText: 'Digite seu e-mail',
                  hintStyle:TextStyle(color: Colors.black, fontSize: 16),
                  border: InputBorder.none
                ),


              ),
            ),
          ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.black,
                    )
                ),
                width: MediaQuery.of(context).size.width * .7,
                child: const TextField(
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                      hintText: 'Digite sua senha',
                      hintStyle:TextStyle(color: Colors.black, fontSize: 16),
                      border: InputBorder.none
                  ),


                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}