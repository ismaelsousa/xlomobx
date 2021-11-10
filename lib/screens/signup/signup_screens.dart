import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:xlomobx/screens/signup/components/field_title.dart';
import 'package:xlomobx/stores/signup_store.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final SignupStore signupStore = SignupStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 16,
            ),
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const FieldTitle(
                        title: "Apelido",
                        subtitle: ' Como aparecerá em seus anúncios'),
                    Observer(builder: (context) {
                      return TextField(
                        enabled: !signupStore.loading,
                        onChanged: signupStore.setName,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Ex.: ismael',
                          isDense: true,
                        ),
                      );
                    }),
                    const SizedBox(
                      height: 16,
                    ),
                    const FieldTitle(
                        title: "E-mail",
                        subtitle: ' Enviaremos um e-mail de confirmação'),
                    Observer(builder: (context) {
                      return TextField(
                        enabled: !signupStore.loading,
                        onChanged: signupStore.setEmail,
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Ex.: ismael@g.com',
                            isDense: true),
                      );
                    }),
                    const SizedBox(
                      height: 16,
                    ),
                    const FieldTitle(
                        title: "Celular", subtitle: ' Proteja sua conta'),
                    Observer(builder: (context) {
                      return TextField(
                        enabled: !signupStore.loading,
                        onChanged: signupStore.setPhone,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          TelefoneInputFormatter()
                        ],
                        autocorrect: false,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '(99) 99999-9999',
                            isDense: true),
                      );
                    }),
                    const SizedBox(
                      height: 16,
                    ),
                    const FieldTitle(
                        title: "Senha",
                        subtitle:
                            ' Use letras, números e caracteres especiais'),
                    Observer(builder: (context) {
                      return TextField(
                        enabled: !signupStore.loading,
                        onChanged: signupStore.setPassword,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          isDense: true,
                        ),
                        obscureText: true,
                      );
                    }),
                    const SizedBox(
                      height: 16,
                    ),
                    const FieldTitle(
                        title: "Confirmar Senha", subtitle: ' Repita a senha'),
                    Observer(builder: (context) {
                      return TextField(
                        enabled: !signupStore.loading,
                        onChanged: signupStore.setConfirmPassword,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          isDense: true,
                        ),
                        obscureText: true,
                      );
                    }),
                    const SizedBox(
                      height: 12,
                    ),
                    const Divider(),
                    Container(
                        height: 50,
                        margin: const EdgeInsets.symmetric(vertical: 12),
                        child: ElevatedButton(
                          onPressed: signupStore.isValidForm ? () {} : null,
                          child: const Text('CADASTRAR'),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              elevation: 0,
                              textStyle: const TextStyle(color: Colors.white),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Já tem conta?',
                              style: TextStyle(fontSize: 16)),
                          GestureDetector(
                            onTap: Navigator.of(context).pop,
                            child: const Text('Entrar',
                                style: TextStyle(
                                    color: Colors.purple,
                                    decoration: TextDecoration.underline,
                                    fontSize: 16)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
