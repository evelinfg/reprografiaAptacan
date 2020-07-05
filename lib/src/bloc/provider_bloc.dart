import 'package:flutter/material.dart';

import 'login_bloc.dart';

class ProviderBloc extends InheritedWidget{
  final loginBloc = new LoginBloc();

  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  //Aplicando "singleton", usando este metodo, al redibujar las pantallas NO se pierde la información de "email" y "password"
  //factory: me permite saber si debo regresar una nueva instancia de la clase o utilizar la existente
  static ProviderBloc _instancia;
  factory ProviderBloc({Key key, Widget child}){
    if (_instancia == null){
      _instancia = new ProviderBloc._internal(key: key, child: child);
    }
    return _instancia;
  }
  ProviderBloc._internal({Key key, Widget child}) : super(key: key, child: child);
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  //Toma el contexto y busca un Widget con el mismo tipo de provider
  static LoginBloc of ( BuildContext context ){
    //return (context.inheritFromWidgetOfExactType(ProviderBloc) as ProviderBloc).loginBloc;
    return (context.dependOnInheritedWidgetOfExactType<ProviderBloc>().loginBloc);
  }
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
}