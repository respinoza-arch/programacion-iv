
// Crear la clase
class Estudiante {
  
  // Atributos
  String nombre;
  int edad;
  bool activo;
  // Inicializar los atributos
  
  // Envio los datos
  
  // Estudiante(this.nombre, this.edad, this.activo);
  
  // Cuando usamos una llave después del parentesis debemos usar required para indicar que es requerido u obligatorio
  Estudiante({required this.nombre, required this.edad, required this.activo});
  
  
  // Usando el método toString que permite convertir en texto
  
  String toString(){
    return "Nombre ${this.nombre}, edad: ${this.edad}, estado: ${this.activo}";
  }

}

void main() {
  
//  final estudiante = new Estudiante("Richard", 35, true);
    final estudiante = new Estudiante(nombre: "Richard", edad: 35, activo: true);
    print(estudiante);
  
}
  