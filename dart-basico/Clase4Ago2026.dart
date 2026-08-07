void main() {
  
  Map<String, dynamic> estudiante = {
    'nombre': 'Richard',
    'edad': 35,
    'carrera': 'Sistemas Inteligentes',
    "promedio": 8.5
  };
  
  print("============= Información Inicial =================");
  print (estudiante);

  // Cambiar el promedio
  estudiante['promedio'] = 9.2;

  // Agregar un allave o key

  estudiante["ciudad"] = "Guayaquil;";

  print("================ Información Actualizada ==============");

      estudiante.forEach((clave,valor){
      print("$clave : $valor");  
});

}