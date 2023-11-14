class Categoria{
  int id;
  String nombre;
  String foto;

  Categoria(this.id, this.nombre, this.foto);
}

//para tener contenido dinámico es necesario crear una clase e 
//inflar con datos para visualizarlo a través de un Gridview.builder

final Menu = [
  Categoria(1, "Perfil", "perfil.png"),
  Categoria(2, "camara", "camara.png"),
  Categoria(3, "Ubicacion", "ubicacion.png"),
  Categoria(4, "Viaje", "img4.png"),

];