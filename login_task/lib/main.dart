import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:login_task/view/signup_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBClKlRLS2JdXyPhc0slkF1MroqHblbY4Y",
          appId: '786796904902:android:de144cb2b5c74ba4b3b2c7',
          messagingSenderId: '786796904902',
          projectId: 'login-task-firebase'));
  runApp(const LoginTask());
}

class LoginTask extends StatelessWidget {
  const LoginTask({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Task',
      home: SignUpView(),
    );
  }
}
