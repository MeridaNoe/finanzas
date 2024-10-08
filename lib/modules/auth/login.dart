import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _isObsucre = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/banco.png',
                width: 200,
                height: 200,
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Correo electronico',
                    label: Text('Correo electronico'),
                    labelStyle: TextStyle(color: Colors.black)),
                keyboardType: TextInputType.emailAddress,
                controller: _email,
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Contraseña',
                    label: const Text('Contraseña'),
                    labelStyle: const TextStyle(color: Colors.black),
                    suffixIcon: IconButton(
                        onPressed: () => {
                              setState(() {
                                _isObsucre = !_isObsucre;
                              })
                            },
                        icon: Icon(_isObsucre
                            ? Icons.visibility
                            : Icons.visibility_off))),
                controller: _password,
                obscureText: _isObsucre,
              ),
              const SizedBox(height: 48,),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(onPressed: () {
                  print('Email: ${_email.text}');
                  print('Password: ${_password.text}');
                } , 
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)
                  )
                ),
                child: const Text('Inicar Sesion')),
              ),
              const SizedBox(height: 16,),
              TextButton(onPressed: () {
                Navigator.pushNamed(context, '/recovery');
              }, child: const Text('Recuperar Contraseña'))
            ],
          ),
        ),
      ),
    );
  }
}
