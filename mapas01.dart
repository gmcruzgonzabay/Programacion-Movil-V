  
  //Mapas
  Map<String, String> estudiante={
    
    'nombre': 'Carlos',
    'carrera': 'Sistemas',
    'ciudad': 'Guayaquil'
  };
  
  print(estudiante);
  
  //acceder a un valor en especifico
  print('****************************');
  print(estudiante['nombre']);
  
  //Errores comunes
  print(estudiante['Nombre']);
  
  //Agregue un elemento al mapa
  print(estudiante['ciudad']);
  
  //agrego un elemento al mapa
  estudiante['promedio']='10';
 
  //errores comunes, agregar un tipo de dato diferente al declarado
  //estudiante['promedio']=1;
  
  
  //Analice el siguiente mapa e indique que se obtiene en consola
  
  
  Map<dynamic, dynamic> clientes={ 
    'nombre': 'Jorge',
    'estado': true,
    'credito': 1000.10,
    1: true,
    true: 100
    };
  
  
    print(clientes);

  //eliminar un elemento del mapa

    print('*************ELIMINAR ELEMENTO DEL MAPA***************');
   clientes.remove('credito');
  print(clientes);
  
  //Saber si existe una clave
  
  if(clientes.containsKey('nombre')){
    
    print('El cliente contiene un nombre registrado');
  }
  print(clientes.containsKey('Nombre'));
  
  
  //recorrer un mapa
  
  estudiante.forEach((clave, valor){
    
    print('$clave : $valor');
    
    
  });
  
  
  // Propiedades utiles con mapas
  
  //saber el tamaño del mapa
  print(estudiante.length);
  
  //saber si esta vacio
  
  print(estudiante.isEmpty);
  
  //
  print(estudiante.isNotEmpty);
  //conocer las llaves o key
  print(estudiante.keys);
  
  //conocer los values o valores
  
  print(estudiante.values);
  
  //Podemos buscar un valor
  
  print(estudiante.containsKey('nombre'));
  
  //ANALICE QUE VALOR LE DEVUELVE SI UD CONSULTA UNA CLAVE O KEY QUE NO EXISTE
  
  
  
  //
  