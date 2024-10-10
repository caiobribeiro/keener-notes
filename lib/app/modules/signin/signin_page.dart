import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/signin/service/signin_service.dart';
import 'package:keener_notes/app/modules/signin/signin_store.dart';
import 'package:keener_notes/app/shared/widgets/custom_button_widget.dart';
import 'package:keener_notes/app/shared/widgets/custom_passworf_field_widget.dart';
import 'package:keener_notes/app/shared/widgets/custom_tesxt_fild_widget.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({
    super.key,
  });

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final SigninStore store = Modular.get<SigninStore>();
  final SigninService service = Modular.get<SigninService>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keener notes'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 70),
                child: Text(
                  'Signin',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _titleText(context, 'Email Address'),
                  CustomTesxtFildWidget(
                    controller: _emailController,
                    hintText: 'Email',
                    onChange: (value) {
                      store.emailControllerText = value;
                    },
                  ),
                  _titleText(context, 'Password'),
                  CustomPassworfFieldWidget(
                    controller: _passwordController,
                    hintText: 'Password',
                    onChange: (value) {
                      store.passwordControllerText = value;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Observer(builder: (_) {
                      return Column(
                        children: [
                          if (store.responseWarning != '') ...[
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(store.responseWarning),
                            )
                          ],
                          CustomButtonWidget(
                            isValid: store.isFormValid,
                            text: 'Signin',
                            onPressed: store.signin,
                          ),
                        ],
                      );
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _titleText(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, top: 5),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }
}
