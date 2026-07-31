void main() {

  String nombre = 'Richard';
  String? apellido = null;
  int? edad;
  
  print(nombre);
  
  print(apellido ?? 'Sin apellido'); // Es como un if 
  
  print("Edad: ${edad ?? 18} ");
  
  if(apellido == null){
    print('Usuario sin apellido');
  }
}
