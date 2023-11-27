import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xff0A0E21)),
        // floatingActionButtonTheme:
        //     const FloatingActionButtonThemeData(backgroundColor: Colors.purple),
        scaffoldBackgroundColor: const Color(0xff0A0E21),
        // sliderTheme: SliderThemeData(
        //   activeTrackColor: Colors.blue,
        //   inactiveTrackColor: Colors.red,
        //   thumbColor: Colors.purple
        // )
      ),
      home: const InputPage(),
    );
  }
}

