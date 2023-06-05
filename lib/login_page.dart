import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class _LoginPageState extends State<LoginPage> {

  @override void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
            const SizedBox(height: 20,),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.black,
                    )
                ),
                width: MediaQuery.of(context).size.width * .7,
                child:  TextField(
                  controller: passwordController,
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                  decoration: const InputDecoration(
                      hintText: 'Digite sua senha',
                      hintStyle:TextStyle(color: Colors.black, fontSize: 16),
                      border: InputBorder.none
                  ),


                ),
              ),
            ),
            ElevatedButton(onPressed: (){}, child: const Text('Entrar')),
            ElevatedButton(onPressed: (){}, child: const Text('Cadastrar-se'))
          ],
        ),
      ),
    );
  }
}