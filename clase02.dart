void main() 
{

  Persona persona1 =Persona('Juan Carlos', 30);
  
  print(persona1.nombre);
  print(persona1.edad);
  
  persona1.saludar();
  
  print('*******USO DEL GET**********');
  // GET
  print(persona1._nombre);
  print(persona1.edad);
   
  
  print('*******USO DEL SET**********');

  //SET
  persona1._nombre='Ana';
  persona1._edad=31;
   
  print('*******USO DEL GET**********');
  
  // GET
  print(persona1._nombre);
  print(persona1.edad);
  
  
  
  
}// fin del main

//Class o clases dentro de dart
class Persona
{
  //Atributos
  String _nombre;
  int _edad;
  
  //Constructor
  Persona(this._nombre, this._edad);
  
  //GET
  String get nombre{
    return _nombre;
  }
  int get edad{
    return _edad;
  }
  
  //SET
  set nombre(String nuevoNombre){
    _nombre=nuevoNombre;
  }
  
  set edad(int nuevaEdad){
    _edad= nuevaEdad;
  }
  
  
  //Procedimientos o eventos
  void saludar()
  {
    
    print('Hola mi nombre es $nombre y tengo $edad años');
  }    
  
} // fin clase Persona