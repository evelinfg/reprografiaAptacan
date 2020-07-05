import 'package:flutter/material.dart';
import 'package:reprografia/src/bloc/provider_bloc.dart';
import 'package:reprografia/src/pages/user_access.dart';
import 'package:reprografia/src/providers/provider.dart';

void main() async{
  

  runApp(ProviderBloc(
    child: new MaterialApp(
      debugShowCheckedModeBanner: false,
      
      initialRoute: 'userAcces',
          routes: {
            'userAcces' : (BuildContext context) => UserAccessPage(),
        },
        
      home: new MyApp(),
    ),
  ));
}
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final datosProvider = new DatosProvider();

  @override
  Widget build(BuildContext context) {
    DatosProvider.contextActual = context;
    
    return Container();
  }
}