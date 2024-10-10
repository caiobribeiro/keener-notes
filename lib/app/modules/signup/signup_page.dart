import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/signup/service/signup_service.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({
    super.key,
  });

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final SignupService service = Modular.get<SignupService>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keener notes'),
      ),
      body: Center(
          child: Column(
        children: [
          const Text('signup'),
          ElevatedButton(
              onPressed: () {
                service.signup(
                    email: 'caio@gmail.com', password: 'asidfjugbasidjf');
              },
              child: const Text('criar conta'))
        ],
      )),
    );
  }
}
