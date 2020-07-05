import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reprografia/src/pages/user_access.dart';
import 'package:reprografia/src/providers/provider.dart';

//class DialogPage {
class DialogPage extends StatelessWidget {
  static DialogPage dialogProvider = new DialogPage();

  //@override
  Widget build(BuildContext context) {
    DatosProvider.contextActual = context;
    
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Container(),
      ),
    );

  }
////////////////////////////////////////////////////////////////////////////////////
//                           MOSTRAR ALERT DIALOG                                 //
////////////////////////////////////////////////////////////////////////////////////
  showDialogg(String iconTipo, String titulo, String mensaje, String btn1, String btn2, BuildContext context, String donde){

    var icon = Image.asset('assets/logo.png', height: 50.0, width: 50.0);
    if ( iconTipo.toLowerCase() == 'error'){
      icon = Image.asset('assets/minus_circle.png', height: 50.0, width: 50.0);
    }else if ( iconTipo.toLowerCase() == 'info'){
      icon = Image.asset('assets/informacion_azul.png', height: 50.0, width: 50.0);
    }else if ( iconTipo.toLowerCase() == 'ok'){
      icon = Image.asset('assets/check_circle.png', height: 50.0, width: 50.0);
    }

    //login_user

    if (btn1 != ""){
      btn1 = "Aceptar";
    }

    if (btn2 != ""){
      btn2 = "Cancelar";
    }

    var alert = new AlertDialog(
      title: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Center(
            child: new Text(
              titulo,
              style: TextStyle(fontSize: DatosProvider.sizeTextTituloAlert, color: DatosProvider.textoTituloAlert, fontFamily: DatosProvider.fontText),
            )
          ),
        ],
      ),
      elevation: 20.0,
      backgroundColor: Colors.white,
      //contentPadding: EdgeInsets.all(60.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(DatosProvider.sizeRadiusBorder)),
      content: new Text(
        mensaje,
        style: TextStyle(fontSize: DatosProvider.sizeTextMensajeAlert, color: DatosProvider.textoMensajeAlert, fontFamily: DatosProvider.fontText),
        textAlign: TextAlign.center,
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: new Text(
            btn2,
            style: TextStyle(fontSize: DatosProvider.sizeTextBoton, color: DatosProvider.textoBotonesAlertDialog, fontFamily: DatosProvider.fontText),
          )
        ),
        FlatButton(
          onPressed: () {
            //Cerrando el AlertDialog
            Navigator.of(context).pop();
            //Cambiando a la pantalla "LoginPage"
            if (donde == "user_acces"){
            }
            if (donde == "register_user_ok"){
              //Navigator.push(context, CupertinoPageRoute(builder: (context) => UserAccessPage()));
              Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context) => UserAccessPage()));
            }
            if (donde == "contact_page"){
              // Navigator.pushReplacement(context, CupertinoPageRoute(
              //   settings: RouteSettings(name: 'base', isInitialRoute: true),
              //   builder: (context) => CupertinoPageScaffold(
              //       child: BasePage(),
              //     )
              // )); 
            }

          },
          child: new Text(
            btn1,
            style: TextStyle(fontSize: DatosProvider.sizeTextBoton, color: DatosProvider.textoBotonesAlertDialog, fontFamily: DatosProvider.fontText),
          )
        ),
      ],
    );

    //return alert;
    return SafeArea(
      child: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                alert,
                Center(
                  child: icon,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
////////////////////////////////////////////////////////////////////////////////////
//                          INTERFAZ DEL ALERT DIALOG                             //
////////////////////////////////////////////////////////////////////////////////////
  callDialog(String iconTipo, String titulo, String mensaje, String btn1, String btn2, BuildContext context, String donde){
     return Future.delayed(Duration.zero, () => showDialog(context: context, builder: (_) => showDialogg(iconTipo, titulo, mensaje, btn1, btn2, context, donde)));
  }
////////////////////////////////////////////////////////////////////////////////////
}