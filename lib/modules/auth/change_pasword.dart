import 'package:flutter/material.dart';

class ChangePasword extends StatefulWidget {
  const ChangePasword({super.key});

  @override
  State<ChangePasword> createState() => _ChangePaswordState();
}

class _ChangePaswordState extends State<ChangePasword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/banco.png', width: 200, height: 200),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Nueva contraseña',
                    label: Text('Nueva contraseña'),
                    labelStyle: TextStyle(color: Colors.black)),
                keyboardType: TextInputType.visiblePassword,
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Confirmar contraseña',
                    label: Text('Confirmar contraseña'),
                    labelStyle: TextStyle(color: Colors.black)),
                keyboardType: TextInputType.visiblePassword,
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16))),
                    child: const Text('Cambiar contraseña')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
