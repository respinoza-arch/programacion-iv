void main() {

  // Listas o arrays
  // EL index empieza en la posición 0
  
 // List numeros = [1,2,3,4,5]; // Lista de enteros pero predeterminado es dinámico
 // List numeros = [1,2,3,4,5,'Richard',true,10.2]; // Lista de tipo dinamico
 // List<dynamic> = [1,2,3,4,5,'Richard',true,10.2]; // Declaración de Lista de tipo dinamico
  
  List numeros = [1,2,3,4,5];
  
  print(numeros.runtimeType);
  
  print(numeros);
  
  // Añado a la lista el elemento 6
  
  numeros.add(6);
  print(numeros);
  
  print(numeros[5]); // Acceder por índice
  
  
  final masNumero = List.generate(100,(int index) => index);
  print(masNumero);
  
  List<String> frutas = ['Manzana','Pera','Uva','Naranja','Aguacate'];
  
  print(frutas);
  
  frutas.remove('Pera'); // Elimina un elemento de la lista (case sensitive)
  
  print(frutas);
  
  // Recorrer una lista 
  
  for(int i = 0; i < frutas.length ; i++){
    print(frutas[i]);
  }
  
  print(frutas.length);

  frutas.forEach((fruta) => print(fruta));
  
