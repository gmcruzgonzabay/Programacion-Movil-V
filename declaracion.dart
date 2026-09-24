void main() 
{

  //int empleado='10';
  //No podemos asignar string a un Entero
 // print (empleado);
 // bool isActive= false;
  
    bool? isActive= null; // Estoy declarando una variable opcional o nula
    String? nombre= null;

  if(isActive == null  && nombre == null)
  {
    print('El nombre y el estado son nulos');
     print(nombre?.length);
  }
  else
  {
    
    
    
    print('El estado es $isActive');
    print(nombre?.length);
  }
  
  
 
  
  
}// fin del main
