import 'package:flutter/material.dart';

import 'src/shared/themes/color_schemes.g.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      title: '',
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(247, 215, 243, 223),
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Padding(padding: const EdgeInsets.only(top: 40, right: 20), child: SizedBox(child: Image.asset('assets/icons/folha.png')))
          ]),
          Column(
            children: [
              SizedBox(
                height: screenSize.height * 0.06,
              ),
              SizedBox(
                height: 66,
                width: 66,
  
                child: Image.asset('assets/icons/icon.png.png'),
              ),
              Text(
                'Receba suas compras em casa',
                style: TextStyle(fontFamily: 'PTSans', fontSize: 28),
              )
            ],
          )
        ],
      ),
    );
  }
}
