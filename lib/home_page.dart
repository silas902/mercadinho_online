import 'package:flutter/material.dart';
import 'package:hortifruti/login_page.dart';

import 'colors_gradient_home_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Scaffold(
          //backgroundColor: Color.fromARGB(247, 215, 243, 223),
          body: Container(
            decoration: BoxDecoration(
              gradient: colorGradientHomePage,
            ),
            child: Column(
            
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, right: 20),
                    child: SizedBox(
                      child: Image.asset('assets/icons/folha.png'),
                    ),
                  )
                ]),
                Column(
                  children: [
                    SizedBox(
                      height: screenSize.height * 0.05,
                    ),
                    SizedBox(
                      height: 66,
                      width: 66,
                      child: Image.asset('assets/icons/icon.png'),
                    ),
                    SizedBox(
                      width: screenSize.width,
                      height: screenSize.height * 0.30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                           SizedBox(
                            child: Column(
                              children: const [
                                Text(
                                  'Receba as suas compras',
                                  style: TextStyle(fontFamily: 'PTSans', fontSize: 28),
                                ),
                                Text(
                                  'em sua casa',
                                  style: TextStyle(fontFamily: 'PTSans', fontSize: 28),
                                ),
                              ],
                            ),
                          ),
                           SizedBox(
                              child: Column(
                            children: const [
                              Text('O melhor aplicativo de entrega da cidade '),
                              Text('para entregar seus mantimentos frescos diários'),
                            ],
                          )),
                          SizedBox(
                            height: screenSize.height * 0.06,
                            width: screenSize.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(
                                  width: 28,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),) );
                                  },
                                  child: const Text(
                                    'Compre agora',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Image.asset('assets/icons/folha3.png'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: screenSize.width * 0.10,
                        ),
                        Image.asset('assets/icons/folha2.png'),
                      ],
                    ),
                    SizedBox(
                      width: screenSize.width,
                      child: Image.asset(
                        'assets/icons/paper-bag-with-healthy-food-healthy-food-background-supermarket-food-concept-shopping-supermarket-home-delivery-min.png',
                        fit: BoxFit.cover,
                        //color: Color(0xFF23AA49),
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
