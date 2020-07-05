import 'dart:async';
import 'package:reprografia/src/bloc/validators.dart';
import 'package:rxdart/rxdart.dart';


class LoginBloc with Validators {
  var _nombreController    = BehaviorSubject<String>();
  var _ciController    = BehaviorSubject<String>();
  var _userController    = BehaviorSubject<String>();
  var _passwordController = BehaviorSubject<String>();
  var _telefonoController = BehaviorSubject<String>();
  var _correoController = BehaviorSubject<String>();

  var _asuntoContactoController = BehaviorSubject<String>();
  var _mensajeContactoController = BehaviorSubject<String>();
  

  // Recuperar los datos del Stream
  Stream<String> get nombreStream    => _nombreController.stream.transform( validarNombre );
  Stream<String> get ciStream    => _ciController.stream.transform( validarCi );
  Stream<String> get userStream    => _userController.stream.transform( validarUsuario );
  Stream<String> get passwordStream => _passwordController.stream.transform( validarPassword );
  Stream<String> get telefonoStream    => _telefonoController.stream.transform( validarCi );
  Stream<String> get correoStream    => _correoController.stream.transform( validarEmail );
  Stream<String> get asuntoContactoStream    => _asuntoContactoController.stream.transform( asuntoContactoVacio );
  Stream<String> get mensajeContactoStream    => _mensajeContactoController.stream.transform( mensajeContactoVacio );

  Stream<bool> get formValidStream2 => 
      Observable.combineLatest2(userStream, passwordStream, (u, p) => true );

  Stream<bool> get formValidStream3 => 
      Observable.combineLatest3(correoStream, asuntoContactoStream, mensajeContactoStream, (c, a, m) => true );

  Stream<bool> get formValidStream6 => 
      Observable.combineLatest6(nombreStream, ciStream, userStream, passwordStream, telefonoStream, correoStream, (n, c, u , p, t, m) => true );

  // Insertar valores al Stream
  Function(String) get changeNombre    => _nombreController.sink.add;
  Function(String) get changeCi    => _ciController.sink.add;
  Function(String) get changeUser    => _userController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;
  Function(String) get changeTelefono => _telefonoController.sink.add;
  Function(String) get changeCorreo => _correoController.sink.add;
  Function(String) get changeAsuntoContacto => _asuntoContactoController.sink.add;
  Function(String) get changeMensajeContacto => _mensajeContactoController.sink.add;

  // Obtener el último valor ingresado a los streams
  String get nombre    => _nombreController.value;
  String get ci    => _ciController.value;
  String get user    => _userController.value;
  String get password => _passwordController.value;
  String get telefono => _telefonoController.value;
  String get correo => _correoController.value;
  String get asuntoContacto => _asuntoContactoController.value;
  String get mensajeContacto => _mensajeContactoController.value;

  dispose() {

    /*
    var _nombreController    = BehaviorSubject<String>();
    var _ciController    = BehaviorSubject<String>();
    var _userController    = BehaviorSubject<String>();
    var _passwordController = BehaviorSubject<String>();
    var _telefonoController = BehaviorSubject<String>();
    var _correoController = BehaviorSubject<String>();

    var _asuntoContactoController = BehaviorSubject<String>();
    var _mensajeContactoController = BehaviorSubject<String>();
    */
    
    // _userController.done;
    // _passwordController.done;
    
    // _nombreController.add(" ");
    // _ciController.add(" ");
    // _userController.add(" ");
    // _passwordController.add(" ");
    // _telefonoController.add(" ");
    // _correoController.add(" ");
    // _asuntoContactoController.add(" ");
    // _mensajeContactoController.add(" ");

    // _nombreController = BehaviorSubject<String>();
    // _ciController = BehaviorSubject<String>();
    // _userController = BehaviorSubject<String>();
    // _passwordController = BehaviorSubject<String>();
    // _telefonoController = BehaviorSubject<String>();
    // _correoController = BehaviorSubject<String>();
    // _asuntoContactoController = BehaviorSubject<String>();
    // _mensajeContactoController = BehaviorSubject<String>();


    _nombreController?.close();
    _ciController?.close();
    _userController?.close();
    _passwordController?.close();
    _telefonoController?.close();
    _correoController?.close();
    _asuntoContactoController?.close();
    _mensajeContactoController?.close();

  }

}

