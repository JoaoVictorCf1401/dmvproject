import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool _cadastrar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom:32),
                  child: Image.asset(
                    "imagens/logo1.png",
                    width: 200,
                    height: 150,
                  ),
                ),
                TextField(
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(32,16,32,16),
                    hintText: "E-mail",
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6)
                    )
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(32,16,32,16),
                      hintText: "Senha",
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6)
                      )
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Logar"),
                    Switch(
                      value: _cadastrar,
                      onChanged: (bool valor){
                        setState(() {
                          _cadastrar = valor;
                        });
                      }
                    ),
                    Text("Cadastrar"),
                  ],
                ),
                // ignore: deprecated_member_use
                RaisedButton(
                  child: Text(
                    "Entrar",
                    style: TextStyle(
                      color: Colors.white, fontSize: 20
                    ),
                  ),
                  color: Colors.deepOrange,
                  padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                  onPressed: (){

                  },
                )
              ],),
          ),
        ),
      ),
    );
  }
}

