void main() 
{

  Persona persona1 =Persona('Juan Carlos', 30);
  
  print(persona1.nombre);
  print(persona1.edad);
  
  persona1.saludar();
  
  
  
}// fin del main

//Class o clases dentro de dart
class Persona
{
  //Atributos
  String nombre;
  int edad;
  
  //Constructor
  Persona(this.nombre, this.edad);
  
  //Procedimientos o eventos
  void saludar()
  {
    
    print('Hola mi nombre es $nombre y tengo $edad años');
  }    
  
} // fin clase Persona