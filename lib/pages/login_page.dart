import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Welcome",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter Your Email Or Username",
                        labelText: "Email Or Username"),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter Your Password", labelText: "Password"),
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/");
                    },
                    child: const Text("Login"),
                    style:
                        TextButton.styleFrom(minimumSize: const Size(100, 40)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
