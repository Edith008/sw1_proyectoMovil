import 'package:flutter/material.dart';

import 'home_page.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio de Sesión'),
        backgroundColor:Color.fromARGB(255, 103, 117, 194),
      ),
      body: Stack(
        children: <Widget>[
          // Fondo con la imagen-------------
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/fondo8.png'),
                fit: BoxFit.cover, // Ajusta la imagen al tamaño de la pantalla
              ),
            ),
          ),
          //--------------------------------
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              //para ajustar la imagen bus2 -------------------
              child: SingleChildScrollView(    
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/images/Bus1.png',height:200), 
                  SizedBox(height: 20.0), 
                  //--------------------------------------------------
                  Text('Login',style:TextStyle(
                    color:Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),),

                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email', 
                      labelStyle: TextStyle(color: Color.fromARGB(255, 179, 184, 237)),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20.0),

                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Contraseña',
                      labelStyle: TextStyle(color: Color.fromARGB(255, 179, 184, 237)),
                      ),
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20.0),

                  ElevatedButton(
                    onPressed: () {
                      // Agregar la lógica de autenticación aquí
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>HomePage()));
                    },
                    child: Text('Iniciar Sesión'),
                  ),
                ],
              ),
              ),
              ),
            ),
        ],
      ),
    );
  }
  

}