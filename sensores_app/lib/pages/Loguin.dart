import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sensores_app/services/AwsServices.dart';

import '../provider.dart';
import '../widgets/widgets.dart';

class Loguin extends StatefulWidget {
  const Loguin({super.key});

  @override
  State<Loguin> createState() => _LoguinState();
}

class _LoguinState extends State<Loguin> {
  AwsServices awsServices = AwsServices();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //loguin con thema de cupertino dentro de un recuadro centrado en la pantalla
      body: Center(
        child: Container(
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/images/PH.jpg'),
              ),
              const SizedBox(height: 10),
              const Text('Sensores Morita System S.A.'),
              const SizedBox(height: 20),

              CupertinoTextField(
                controller: _usernameController,
                style: const TextStyle(color: Colors.white),
                placeholder: 'Usuario',
              ),
              const SizedBox(height: 4),

              CupertinoTextField(
                //modo password
                // obscureText: true,
                controller: _passwordController,
                style: const TextStyle(color: Colors.white),
                placeholder: 'Contraseña',
              ),
              Consumer<provider>(
                builder: (context, provider, child) => CupertinoButton(
                  child: const Text('Iniciar Sesión'),
                  onPressed: () => {
                    // para usar el loguin con aws cognito descomentar _Loguin
                    // _login(provider),
                    Navigator.popAndPushNamed(context, 'rickandmorti'),
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      
    );
  }
  void _login(provider) async{
    final username = _usernameController.text.trim();
    final password = _passwordController.text.trim();
    await provider.awsServices.createInitialRecord(username, password)
    ?{
      Navigator.popAndPushNamed(context, 'piscinaPage'),
    }
    :{
        provider.awsServices.logued
        ?showDialog(context: context, 
          builder: (_)  => NuevoPasswordDialog(),
        )
        :showDialog(context: context,
          builder: (_)  => const CupertinoAlertDialog(
            title: Text('Usuario o contraseña incorrecto'),
          )
        )
        // provider.awsServices.NewPasswordRequired(password)
      };

    // print('username: $username');
    // print('password: $password');
  }
}