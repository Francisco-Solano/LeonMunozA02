import 'package:flutter/material.dart';
class Boton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const Boton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: Color(0xFF1B1B1B),
                borderRadius: BorderRadius.circular(9.0),
              ),
              child: TextButton(
                onPressed: onTap,
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
            ),
            SizedBox(width: 16.0),
          ],
        ),
      ),
    );
  }
}
