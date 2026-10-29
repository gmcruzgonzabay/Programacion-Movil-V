
import 'package:ecotec_app/screens/screens.dart';
import 'package:flutter/widgets.dart';

class AppRoutes {

  //Nombre de las rutas

static const String inicio='/';
static const String texto='/texto';
static const String imagenes='/imagenes';
static const String formularios='/formularios';

//mapas de rutas
static final Map<String, WidgetBuilder>rutas={
inicio: (context)=>HomeScreen(),
texto:(context)=>TextoScreen(),
imagenes:(context)=>ImagenesScreen(),
formularios:(context) => FormsScreen()
};


}