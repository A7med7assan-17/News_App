import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login_task/view/homescreen.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final auth = FirebaseAuth.instance;
  bool showpass = true;
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: const Text(
          'Sign In',
          style: TextStyle(
            fontSize: 25,
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Welcome Back',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              textAlign: TextAlign.center,
              'You can sign in using your \n email and password or \n through scial media \n messages',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            child: TextFormField(
              onChanged: (value) {
                email = value;
              },
              decoration: const InputDecoration(
                hintText: 'email',
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            child: TextFormField(
              onChanged: (value) {
                password = value;
              },
              obscureText: showpass,
              decoration: InputDecoration(
                hintText: 'password',
                prefixIcon: const Icon(Icons.lock_outline),
                suffixIcon: IconButton(
                    onPressed: () {
                      showpass = showpass == true ? false : true;
                      setState(() {});
                    },
                    icon: Icon(showpass == true
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined)),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              try {
                var user = await auth.signInWithEmailAndPassword(
                    email: email, password: password);
                if (user != null) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                }
              } catch (e) {
                print(e);
              }
            },
            style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Color(0xff6750A3)),
                fixedSize: WidgetStatePropertyAll(Size(220, 20))),
            child: const Text(
              'Sign In',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
