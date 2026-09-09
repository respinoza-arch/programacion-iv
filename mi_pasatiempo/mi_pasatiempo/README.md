# Proyecto Integrador 3
# Continuación del Integrador 2: Mi pasatiempo favorito

Programación IV: Desarrollo de aplicaciones móviles

Nombre del proyecto:

# WikiPesca

<img width="137" height="153" alt="image" src="https://github.com/user-attachments/assets/db09cc90-f80d-4a40-beed-9ad9cd337d16" />


- Descripción de la aplicación.

Aplicación informativa sobre la pesca en varios lugares o entornos.

- Objetivo.

Informativo y guía inicial.

- Funcionalidades principales.

Marcar lugares favoritos y mostrar información y consejos con alguna notificación.

- Tecnologías y paquetes utilizados.

Programación dart en flutter, paquetes instalados google fonts, provider.

- Estructura de carpetas del proyecto.

<img width="428" height="237" alt="image" src="https://github.com/user-attachments/assets/810e686d-5a00-4533-a215-c288f72199b9" />

- Explicación breve del Provider implementado.

La clase PescaProvider extiende de ChangeNotifier y actúa como el administrador de estado global para la sección de lugares de pesca en la aplicación.

- Descripción de los widgets reutilizables creados.

boton_personalizado: Es un widget de botón estandarizado basado en ElevatedButton.icon. Recibe como parámetros el texto a mostrar, el ícono, la función a ejecutar al presionar (onPressed) y un color opcional.
  
tarjeta_lugar_pesca: Es un componente visual diseñado para representar cada punto de pesca (LugarPesca) en formato de tarjeta (Card). Muestra el ícono, nombre y descripción del lugar, e integra directamente un widget Consumer<PescaProvider> en su icono de acción (trailing).

- Capturas de las principales pantallas.

<img width="360" height="780" alt="Screenshot_1788919429" src="https://github.com/user-attachments/assets/4a34c5bd-65b7-4f38-8d07-eccb1aa86b5a" />
<img width="360" height="780" alt="Screenshot_1788920955" src="https://github.com/user-attachments/assets/7888fc3f-cb06-49df-bbd6-ab9da21eea78" />
<img width="360" height="780" alt="Screenshot_1788920963" src="https://github.com/user-attachments/assets/6d0fad3e-81fc-4be7-9575-4e997b1a325d" />
<img width="360" height="780" alt="Screenshot_1788920980" src="https://github.com/user-attachments/assets/d6d7a752-ab3a-4afc-b905-4f254b49f010" />
<img width="360" height="780" alt="Screenshot_1788921007" src="https://github.com/user-attachments/assets/1df7a742-9a99-4539-af3a-e0190626524e" />
<img width="360" height="780" alt="Screenshot_1788920968" src="https://github.com/user-attachments/assets/4df4cf77-acae-417f-ab82-6599934f6158" />

- Captura o evidencia de la funcionalidad administrada mediante Provider.

La pantalla inicial tiene un botón de me gusta que se actualiza en la pantalla lugares de pesca definido en provider.

<img width="360" height="780" alt="Screenshot_1788919360" src="https://github.com/user-attachments/assets/4caf2b4f-922e-4dbe-ae82-92a67588982f" />
<img width="360" height="780" alt="Screenshot_1788919374" src="https://github.com/user-attachments/assets/b387fa22-8b5e-4e30-951d-d07bfacfaa58" />
<img width="360" height="780" alt="Screenshot_1788919380" src="https://github.com/user-attachments/assets/c2b8a967-1b3b-49b9-85a0-1ae2a0896e2c" />

- Autor.

  Richard Espinoza Almeida

Se instaló la dependencia "provider"

<img width="402" height="200" alt="image" src="https://github.com/user-attachments/assets/f6c89c64-f91a-42cc-8471-ca344565acad" />


# Proyecto Integrador 2
# Continuación del Integrador 1: Mi pasatiempo favorito

Programación IV: Desarrollo de aplicaciones móviles

Richard Espinoza Almeida

Instalación de image_picker:
<img width="1012" height="181" alt="image" src="https://github.com/user-attachments/assets/237bf9cc-3946-4ef3-b115-bb8efdd34614" />

Se modifica el archivo android/app/src/main/AndroidManifest.xml para los permisos respectivos:

Se agrega el ícono para la aplicación:

<img width="284" height="613" alt="image" src="https://github.com/user-attachments/assets/5d668c90-ce82-4664-8725-5f258a0c2e7c" />


<img width="284" height="613" alt="image" src="https://github.com/user-attachments/assets/77c45fd3-1f4f-4aef-9276-7c06d8e09bf7" />



# Proyecto Integrador 1
# Mi pasatiempo favorito

Programación IV: Desarrollo de aplicaciones móviles

Richard Espinoza Almeida

## Herramientas usadas


- Android Studio

- Visual Studio Code

- Dart

- Flutter


<img width="926" height="333" alt="image" src="https://github.com/user-attachments/assets/7d01d1c0-ac2c-4907-a2fc-a35c371185ef" />



