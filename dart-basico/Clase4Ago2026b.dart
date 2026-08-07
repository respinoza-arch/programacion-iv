void main(){
   Map<String, dynamic> estudiante = {
    'nombre': 'Samuel',
    'edad': 23,
    'materia':{
      'nombre': 'Programación Móvil',
      'nota': 9.1
    }
  };
  
  print('Nombre: ${estudiante['nombre']}');
  print('Edad: ${estudiante['edad']}');
  
  print('Nombre: ${estudiante['materia']['nombre']}');

}