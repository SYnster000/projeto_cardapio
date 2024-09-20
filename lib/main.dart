// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ViewLogin(),
    );
  }
}

class ViewLogin extends StatefulWidget {
  const ViewLogin({super.key});

  @override
  State<ViewLogin> createState() => _ViewLoginState();
}

class _ViewLoginState extends State<ViewLogin> {
  var formKey = GlobalKey<FormState>();
  var primaryColor = const Color.fromARGB(255, 16, 0, 75);
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 50, 30, 30),
        child: Form(
            key: formKey,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.currency_exchange,
                  size: 140,
                  color: primaryColor,
                ),
                SizedBox(height: 30),
                Text("Login",
                  style: TextStyle(fontSize: 40),
                  ),
                SizedBox(height: 30),
                TextFormField(
                  controller: txtEmail,
                  style: TextStyle(fontSize: 24),
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: primaryColor),
                    labelText: "E-mail",
                    fillColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(color: primaryColor),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Informe o E-mail';
                    } 
                    return null;
                  },
                ),
                SizedBox(height: 30),
                TextFormField(
                  controller: txtSenha,
                  style: TextStyle(fontSize: 24),
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: primaryColor),
                    labelText: "Senha",
                    fillColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(color: primaryColor),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Informe a Senha';
                    } 
                    return null;
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: (){},
                      child: Text("Esqueceu sua senha?")),
                  ],
                ),
                SizedBox(height: 30),
                ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(fontSize: 22),
                  minimumSize: Size(200, 50),
                ),
                onPressed: () {
                  if (formKey.currentState!.validate()){
                    
                    setState(() {});

                  }
                },
                child: Text('Login'),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 243, 243, 243),
                  foregroundColor: primaryColor,
                  textStyle: TextStyle(fontSize: 22),
                  minimumSize: Size(200, 50),
                ),
                onPressed: () {},
                child: Text('Criar Conta'),
                ),

              ],
            )),
      ),
    );
  }
}
