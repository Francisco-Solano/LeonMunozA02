import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final Color customGreyColor = Color.fromRGBO(43, 43, 44, 1);

  @override
  Widget build(BuildContext context) {
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
                        '0',
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
                        _buildButton('+'),
                        SizedBox(width: 16.0),
                        _buildButton('RESET'),
                        SizedBox(width: 16.0),
                        _buildButton('-'),
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

Widget _buildButton(String text) {
  return Container(
    width: 120.0, 
    height: 50.0,
    decoration: BoxDecoration(
      color: Color(0xFF1B1B1B),
      borderRadius: BorderRadius.circular(9.0),
    ),
    child: TextButton(
      onPressed: () {
       
      },
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins',
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    ),
  );
}


}
