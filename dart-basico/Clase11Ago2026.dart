
void main() {
  
  // FUNCIONES NOS PERMITEN ORGANIZAR CODIGO
  // REUTILIZAR CODIGO (EVITA REPETIR CODIGO, ORDENAR LA LOGICA
  // HACER EL PROGRAMA MAS LEGIBLE)
  
  saludar();
  
  saludarUsuario("Richard"); // Ejemplo funciones con argumento
  
  int resultado = sumar(5, 4);
  print(resultado);
  
  print(obtenerDato());
  
  mostrarInfo('Richard');
  mostrarInfo('Richard', 35);
  
  mostrarPerfil(nombre: "Fabian", edad: 35); // Me permite una mejor visualizacion
  // o envio de datos
  
  print(multiplicar(4,2));
  
} // FIN MAIN
  
void saludar()
{
  print("Hola desde DART");
}

void saludarUsuario(String nombre)
{
  print("Hola $nombre");
  // un void no retorna ningun valor
}

int sumar(int a, int b)
{
  // Con tipo de dato retorna un valor
  return a + b;
}

dynamic obtenerDato()
{
  return "Hola desde dynamic";  
}

// Funciones con parametros opcionales

void mostrarInfo(String nombre, [int? edad]){
  
  if (edad != null)
  {
    print("Nombre: $nombre, Edad: $edad");
    
  }
  else
  {
    print("Nombre: $nombre");
  }
  
}

// PARAMETROS NOMBRADOS

void mostrarPerfil({required String nombre, int edad=0})
{
  print("Nombre: $nombre, Edad: $edad");
}

// FUNCIONES DE FLECHA
// Se utiliza cuando la funcion solo tiene una línea de código

int multiplicar(int a, int b) => a*b;
