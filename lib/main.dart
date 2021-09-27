import 'package:flutter/material.dart';
import 'dart:ui';

import 'login.dart';
import 'sign_up.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                  children: const <Widget>[
                    Text("Data Games",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      ),
                    )
                  ]
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                       image: AssetImage('images/controller.png')
                    )
                ),
              ),
              Column(
                children: <Widget>[
                  //Botão de Login
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()))
                    },
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(
                          width: 3,
                            color: Colors.black
                        ),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                      ),
                    ),
                  ),
                  const SizedBox(height:20),
                  //Botão de Criar Conta
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupPage()));
                    },

                    color: Colors.black,
                    child: const Text(
                      "Criar Conta",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


