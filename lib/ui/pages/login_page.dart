import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            child: Image(image: AssetImage('lib/ui/assets/logo.png'),),
          ),
          Text('Login'.toUpperCase()),
          Form(child: Column(children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                icon: Icon(Icons.email)
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                icon: Icon(Icons.email)
              ),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {}, 
              child: Text('Entrar'.toUpperCase()),
              ),
            TextButton.icon(onPressed: () {}, icon: Icon(Icons.person), label: Text('Criar Conta'))
          ],)
          )
        ],),
      ),
    );
  }
}