import 'package:flutter_test/flutter_test.dart';
// Importa el main de tu proyecto
import 'package:pasatiempo_pesca/main.dart'; 

void main() {
  testWidgets('Carga inicial de la aplicación', (WidgetTester tester) async {
    // Carga tu aplicación real
    await tester.pumpWidget(const FishingApp()); // Reemplaza FishingApp si tu clase principal se llama diferente en main.dart

    // Verifica que se renderice algún elemento de tu interfaz (por ejemplo, el título del AppBar)
    expect(find.text('Rutas & Puntos de Pesca'), findsOneWidget);
  });
}