import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reprografia/src/dialog/dialog.dart';
import 'package:reprografia/src/interfaces/dialog_interface.dart';
import 'package:reprografia/src/providers/provider.dart';

BuildContext contextUserAcces;
final datosProvider = new DatosProvider();

class UserAccessPage extends StatefulWidget implements DialogShow{
  
  @override
  _UserAccessPageState createState() => _UserAccessPageState();
////////////////////////////////////////////////////////////////////////////////////
//                                INTERFACE DIALOG                                //
////////////////////////////////////////////////////////////////////////////////////
  @override
  void dialogShow(BuildContext context100, String donde, String mensaje) {
    datosProvider.logGlobalString("USER_ACCESS_INTERFAZ_DONDE", donde);
    DialogPage.dialogProvider.callDialog("error", "Error", mensaje, "aceptar", "", contextUserAcces, "user_acces");
  }
}

class _UserAccessPageState extends State<UserAccessPage>{
  @override
  Widget build(BuildContext context) {
    var pantalla = _loadScreen(context);
    contextUserAcces = context;
    return pantalla;
  }
////////////////////////////////////////////////////////////////////////////////////
//                          CARGAR PANTALLA LOGIN                                 //
////////////////////////////////////////////////////////////////////////////////////
  _loadScreen(BuildContext context){

    return Scaffold(
      backgroundColor: DatosProvider.principalBackground,
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: DatosProvider.principalBackground,
          child: Stack(
            children: <Widget>[
              DatosProvider.datosProvider.crearFondo(context),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 60.0,
                  ),

                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 100.0,),
                        //Boton Login
                        _bLogin(context),
                        SizedBox(height: 10.0,),
                        //Boton Registrar
                        _bRegister(context),
                        SizedBox(height: 10.0,),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
////////////////////////////////////////////////////////////////////////////////////
//                                BOTON LOGIN                                     //
////////////////////////////////////////////////////////////////////////////////////
  _bLogin(BuildContext context){
    return RaisedButton(
      onPressed: (){
        _loadLoginScreen(context);
      },
      child: Text(
        "Iniciar sesión",
        style: TextStyle(fontSize: DatosProvider.sizeTextBoton, color: DatosProvider.textoBotones, fontFamily: DatosProvider.fontText),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(DatosProvider.sizeRadiusButton),
        side: BorderSide(color: DatosProvider.bordeColorBoton)
      ),
      color: DatosProvider.backgroundColorBotonOk,
    );
  }
////////////////////////////////////////////////////////////////////////////////////
//                                BOTON REGISTRAR                                 //
////////////////////////////////////////////////////////////////////////////////////
  _bRegister(BuildContext context){
    return RaisedButton(
      onPressed: (){
        _loadRegisterScreen(context);
      },
      child: Text(
        "Registrar",
        style: TextStyle(fontSize: DatosProvider.sizeTextBoton, color: DatosProvider.textoBotones, fontFamily: DatosProvider.fontText),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(DatosProvider.sizeRadiusButton),
        side: BorderSide(color: DatosProvider.bordeColorBoton)
      ),
      color: DatosProvider.backgroundColorBotonOk,
    );
  }
////////////////////////////////////////////////////////////////////////////////////
//                                PANTALLA LOGIN                                  //
////////////////////////////////////////////////////////////////////////////////////
  _loadLoginScreen(BuildContext context){ 
    // Navigator.pushReplacement(
    //   context, 
    //   CupertinoPageRoute(builder: (BuildContext context) => LoginPage())
    // );
  }
////////////////////////////////////////////////////////////////////////////////////
//                            PANTALLA REGISTRAR                                  //
////////////////////////////////////////////////////////////////////////////////////
  _loadRegisterScreen(BuildContext context){
    // Navigator.pushReplacement(
    //   context, 
    //   CupertinoPageRoute(builder: (BuildContext context) => RegisterPage())
    // );
  }
////////////////////////////////////////////////////////////////////////////////////
}