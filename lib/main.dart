import 'package:flutter/material.dart';
import 'package:leonmunoza02/widgets/Boton.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Color customGreyColor = Color.fromRGBO(43, 43, 44, 1);
  int contador = 0;
  TextEditingController _contadorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _contadorController.text = contador.toString();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: MaterialColor(
            customGreyColor.value,
            <int, Color>{
              50: customGreyColor,
              100: customGreyColor,
              200: customGreyColor,
              300: customGreyColor,
              400: customGreyColor,
              500: customGreyColor,
              600: customGreyColor,
              700: customGreyColor,
              800: customGreyColor,
              900: customGreyColor,
            },
          ),
        ),
      ),
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 100.0),
                  child: Text(
                    'CONTADOR',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 60,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Center(
                      child: Text(
                        _contadorController.text,
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontFamily: 'Poppins_ExtraLight',
                          color: Colors.white,
                          fontSize: 200,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Boton(
                          text: '-',
                          onTap: () {
                            setState(() {
                              contador--;
                               print(contador);
                            });
                          },
                        ),
                          Boton(
                          text: 'RESET',
                          onTap: () {
                            setState(() {
                              contador = 0;
                               print(contador);
                            });
                          },
                        ),
                        Boton(
                          text: '+',
                          onTap: () {
                            setState(() {
                              contador++;
                              print(contador);
                            });
                          },
                        ),                                            
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Text(
                'Bienvenido admin',
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontFamily: 'Poppins_ExtraLight',
                  color: Color(0xFFACABAB),
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
