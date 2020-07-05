import 'package:flutter/material.dart';

class DatosProvider{
  static DatosProvider datosProvider = new DatosProvider();

  static Color principalBackground = Colors.black;

  // Botones
  static Color textoBotones = Colors.white;
  static Color textoTitulos = Colors.white;
  static double sizeRadiusButton = 12.0;
  //static Color backgroundColorBoton = Colors.black;
  static Color backgroundColorBoton = Colors.grey[800];
  static Color backgroundColorBotonOk = Color(0xff3394ac); // Second `const` is optional in assignments.
  static Color bordeColorBoton = Colors.green;
  // static Color bordeColorBoton = Colors.transparent;

  //AlertDialog
  static Color textoTituloAlert = Colors.black;
  static Color textoMensajeAlert = Colors.black;
  static double sizeTextTituloAlert = 20.0;
  static double sizeTextMensajeAlert = 15.0;
  static Color textoBotonesAlertDialog = Colors.blueAccent;

  //Borders
  static double sizeRadiusBorder = 20.0;

  //Tamaños Textos
  static double sizeTextBoton = 15.0;
  static double sizeTextTitulos = 18.0;
  static double sizeTextMensaje = 12.0;

  //Fuentes
  // static String fontText = 'Roboto';
  static String fontText = 'Robotech';

  ////////////////////////////////////////////////////////////////////////
  //                              OTROS                                 //
  ////////////////////////////////////////////////////////////////////////
  //Contexto actual
  static BuildContext contextActual;




////////////////////////////////////////////////////////////////////////////////////
//                                FONDO PANTALLA                                  //
////////////////////////////////////////////////////////////////////////////////////
  Widget crearFondo(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    final fondoModaro = Container(
      //height: size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color> [
            Colors.black,
            Colors.black,
            //Color.fromRGBO(63, 63, 156, 1.0),
            //Color.fromRGBO(90, 70, 178, 1.0)
          ]
        )
      ),
    );

    final circulo = Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        //color: Color.fromRGBO(255, 255, 255, 0.05)
        color: Colors.grey[850],
      ),
    );


    return Stack(
      children: <Widget>[
        fondoModaro,
        //Positioned( top: 90.0, left: 30.0, child: circulo ),
        Positioned( top: -40.0, right: -30.0, child: circulo ),
        Positioned( bottom: -50.0, right: -10.0, child: circulo ),
        Positioned( bottom: 120.0, right: 20.0, child: circulo ),
        Positioned( bottom: -50.0, left: -20.0, child: circulo ),
        
        Container(
          padding: EdgeInsets.only(top: 10.0),
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/logo.png',
                fit: BoxFit.cover,
                height: 100.0,
                width: 100.0,
              ),
              SizedBox( height: 10.0, width: double.infinity ),
              Image.asset(
                'assets/protolabd.png',
                fit: BoxFit.cover,
              ),
            ],
          ),
        )

      ],
    );
  }
////////////////////////////////////////////////////////////////////////////////////
//                                LOG GLOBALS                                     //
////////////////////////////////////////////////////////////////////////////////////
  logGlobalJson(String mensaje, Object json){
    print('====================================================');
    print("GLOBAL_RESPONSE_$mensaje: ${json.toString()}");
    print('====================================================');
  }
  logGlobalString(String titulo, String mensaje){
    print('====================================================');
    print("GLOBAL_RESPONSE_$titulo: $mensaje");
    print('====================================================');
  }
////////////////////////////////////////////////////////////////////////////////////
}