import 'package:flutter/material.dart';


class CamaraPage extends StatefulWidget {

  @override
  State<CamaraPage> createState() => _CamaraPageState();
}

class _CamaraPageState extends State<CamaraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("camara"), backgroundColor: const Color.fromARGB(255, 103, 117, 194)),
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