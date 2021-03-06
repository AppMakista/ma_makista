import 'package:flutter/material.dart';
import 'package:mamakista/login/forgot_password_screen.dart';

class inscription extends StatefulWidget {
  @override
  _inscriptionState createState() => _inscriptionState();
}

class _inscriptionState extends State<inscription> {
  String firstname = '';
  String lastname = '';
  // String Pseudo = '';
  // String email = '';
  String telephone = '';
  // String password = '';
  //String confpassword = '';
  bool remember = false;

  final _KeyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        backgroundColor: Colors.white70,
        title: Image.asset(
          "assets/logo.png",
          height: 100,
          width: 130,
          fit: BoxFit.cover,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
          child: Form(
            key: _KeyForm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Prenom', border: OutlineInputBorder()),
                  validator: (val) =>
                  val!.isEmpty ? 'Veuillez entrer votre prenom ' : null,
                  onChanged: (Val) => firstname = Val,
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Nom', border: OutlineInputBorder()),
                  validator: (val) =>
                  val!.isEmpty ? 'Veuillez entrer votre nom' : null,
                  onChanged: (Val) => lastname = Val,
                ),
                SizedBox(height: 10.0),


                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Telephone', border: OutlineInputBorder()),
                  validator: (val) =>
                  val!.isEmpty ? 'Veuillez entrer votre numero' : null,
                  onChanged: (Val) => telephone = Val,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: remember,
                      activeColor: Colors.blue,
                      onChanged: (value) {
                        setState(() {
                          remember = value!;
                        });
                      },
                    ),
                    Text("Souviens-toi de moi"/*"Remember me"*/),
                    Spacer(),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(
                          context, ForgotPasswordScreen.routeName),
                      child: Text(
                        "Mot de Passe oubli??"
                        /*"Forgot Password"*/,
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
