import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entrar'),
      ),
      body: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        margin: const EdgeInsets.symmetric(horizontal: 32),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Acessar com E-mail",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, bottom: 4, top: 8),
                child: Text(
                  'E-mail',
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  isDense: true,
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 3, bottom: 4, top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Senha',
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: const Text('Esqueci minha senha',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.purple)))
                    ],
                  )),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  isDense: true,
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Entrar'),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
