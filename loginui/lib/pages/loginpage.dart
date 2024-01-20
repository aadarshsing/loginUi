import 'package:flutter/material.dart';
import 'package:loginui/components/Textfield.dart';
import 'package:loginui/components/square_tile.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "welcome back you\'ve been missed",
                style: TextStyle(color: Colors.grey[700]),
              ),
              const SizedBox(height: 25),
              MyTextField(
                controller: emailcontroller,
                hintText: "Username",
                obscureText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: passwordcontroller,
                hintText: "Password",
                obscureText: true,
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      child: Text("Forget Password?"),
                      onTap: () {},
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  style: const ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(5),
                              right: Radius.circular(5)))),
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                      fixedSize: MaterialStatePropertyAll(Size(400, 70))),
                  onPressed: () {},
                  child: const Text(
                    "Sign in",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey[400],
                      thickness: 0.5,
                    ),
                  ),
                  Text(
                    "Or continue with",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  Expanded(
                      child: Divider(
                    color: Colors.grey[400],
                    thickness: 0.5,
                  )),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: 'lib/images/apple.png'),
                  SizedBox(
                    width: 20,
                  ),
                  SquareTile(imagePath: 'lib/images/google.png')
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member?",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: const Text(
                      "Register now",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
