import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/signup/repository/signup_repository.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({
    super.key,
  });

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final SignupRepository service = Modular.get<SignupRepository>();
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
