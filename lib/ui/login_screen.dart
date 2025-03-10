import 'package:flutter/material.dart';
import 'package:flutter_banco_douro/ui/styles/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/banner.png"),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset("assets/images/stars.png"),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 32,
              top: 32,
              right: 32,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 128,
                  ),
                  Image.asset(
                    "assets/images/logo.png",
                    width: 100,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 25),
                        const Text(
                          "Sistema de Gestão de Contas.",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 32),
                        ),

                        const SizedBox(height: 25),
                        TextFormField(
                          decoration:
                              const InputDecoration(label: Text("E-mail")),
                        ),

                        const SizedBox(height: 16),
                        TextFormField(
                          obscureText: true,
                          decoration:
                              const InputDecoration(label: Text("Senha")),
                        ),

                        const SizedBox(height: 32), //espaço
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, "home");
                          },
                          style: const ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              AppColors.orange,
                            ),
                          ),
                          child: const Text(
                            "Entrar",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
