
void main() {
 
  List<String> materias= ["Programacion","Base de datos", "Redes"];
  
  mostrarMaterias(materias);
  
  Map<String, dynamic> estudiante = {
    'nombre': 'Richard',
    'edad': 35,
    'estado': true
  };
  
  // Mostrar el mapa con una funcion
  mostrarEstudiantes(estudiante);
  

}


// Funciones y listas

void mostrarMaterias(List<String> materias)
{
  for (var materia in materias){
    print(materia);
  }
}

void mostrarEstudiantes(dynamic estudiante){
  for (var dato in estudiante.entries){
    print("${dato.key}, ${dato.value}");
  }
}