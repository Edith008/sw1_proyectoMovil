import 'package:flutter/material.dart';


class PerfilPage extends StatefulWidget {

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Perfil..."), backgroundColor: const Color.fromARGB(255, 103, 117, 194)),
      backgroundColor:Color.fromARGB(255, 187, 177, 217),
      body: Container(
        decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/fondo4.png'),
                fit: BoxFit.cover,
              ),
        ),
      ),
    );
  }
}