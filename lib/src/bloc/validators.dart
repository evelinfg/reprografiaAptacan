import 'dart:async';
import 'package:reprografia/src/providers/provider.dart';

class Validators {
////////////////////////////////////////////////////////////////////////////////////
//                                VALIDAR NOMBRE                                  //
////////////////////////////////////////////////////////////////////////////////////
  final validarNombre = StreamTransformer<String, String>.fromHandlers(
    handleData: ( name, sink ) {

      if ( name.length == 0 ) {
        sink.addError('Introduzca su nombre por favor');
      } else {
        sink.add( name );
      }

    }
  );
////////////////////////////////////////////////////////////////////////////////////
//                                VALIDAR CI/RUT/DNI                              //
////////////////////////////////////////////////////////////////////////////////////
  final validarCi = StreamTransformer<String, String>.fromHandlers(
    handleData: ( ci, sink ) {

      if ( ci.length == 0 ) {
        sink.addError('Introduzca su RUT por favor');
      } else {
        sink.add( ci );
      }

    }
  );
////////////////////////////////////////////////////////////////////////////////////
//                                VALIDAR TELEFONO                                //
////////////////////////////////////////////////////////////////////////////////////
  final validarTelefono = StreamTransformer<String, String>.fromHandlers(
    handleData: ( telefono, sink ) {

      if ( telefono.length == 0 ) {
        sink.addError('Introduzca su telefono por favor');
      } else {
        sink.add( telefono );
      }

    }
  );
////////////////////////////////////////////////////////////////////////////////////
//                                VALIDAR USER                                    //
////////////////////////////////////////////////////////////////////////////////////
  final validarUsuario = StreamTransformer<String, String>.fromHandlers(
    handleData: ( user, sink ) {

      if ( user.length == 0 ) {
        sink.addError('Introduzca su usuario por favor');
      } else {
        sink.add( user );
      }

    }
  );
////////////////////////////////////////////////////////////////////////////////////
//                                VALIDAR CONTRASEÑA                              //
////////////////////////////////////////////////////////////////////////////////////
  final validarPassword = StreamTransformer<String, String>.fromHandlers(
    handleData: ( password, sink ) {

      if ( password.length >= 6 ) {
        sink.add( password );
      } else {
        sink.addError('Debe tener más de 6 caracteres');
      }
    }
  );
////////////////////////////////////////////////////////////////////////////////////
//                                VALIDAR EMAIL                                   //
////////////////////////////////////////////////////////////////////////////////////
  final validarEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: ( email, sink ) {
      Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      RegExp regExp   = new RegExp(pattern);
      if ( regExp.hasMatch( email ) ) {
        sink.add( email );
      } else {
        sink.addError('Email no es correcto');
      }
    }
  );
////////////////////////////////////////////////////////////////////////////////////
//                     VALIDAR ASUNTO CONTACTO VACIO                              //
////////////////////////////////////////////////////////////////////////////////////
  final asuntoContactoVacio = StreamTransformer<String, String>.fromHandlers(
    handleData: ( asunto, sink ) {

      if ( asunto.length >= 1 ) {
        sink.add( asunto );
      } else {
        sink.addError('Por favor introduzca el asunto');
      }
    }
  );
////////////////////////////////////////////////////////////////////////////////////
//                           VALIDAR MENSAJE CONTACTO                             //
////////////////////////////////////////////////////////////////////////////////////
  final mensajeContactoVacio = StreamTransformer<String, String>.fromHandlers(
    handleData: ( mensaje, sink ) {

      if ( mensaje.length >= 1 ) {
        sink.add( mensaje );
      } else {
        sink.addError('Por favor introduzca el mensaje');
      }
    }
  );
////////////////////////////////////////////////////////////////////////////////////
}
