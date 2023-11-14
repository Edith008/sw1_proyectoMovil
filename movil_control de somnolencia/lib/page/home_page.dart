import 'package:flutter/material.dart';
import'camara_page.dart';
import '../model/categoria.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"), backgroundColor: const Color.fromARGB(255, 103, 117, 194)),
      backgroundColor:Color.fromARGB(255, 187, 177, 217),
      body: Container(
        decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/fondo4.png'),
                fit: BoxFit.cover, // Ajusta la imagen al tamaño de la pantalla
              ),
            ),


        child: GridView.builder(
          itemCount: Menu.length,
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
          itemBuilder: (context,index){
            return Container(
              margin:EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child:GestureDetector(
                onTap: (){
                  //print("click en "+ Menu[index].nombre);
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>  CamaraPage()));
                },
               
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/" + Menu[index].foto,width:100),
                Text(Menu[index].nombre)
                ],
              ),
              ),
            );
          }
        ),
      ),
    );
    
  }
}