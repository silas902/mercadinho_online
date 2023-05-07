import 'package:flutter/material.dart';
import 'package:hortifruti/custon_keyboard_login_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String text = '';
  void _onKeyPressed(String key) {
    setState(() {
      if (key == '<') {
        text = text.substring(0, text.length - 1);
      } else {
        text += key;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 0)
                      ],
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            child: Column(
              children: [
                SizedBox(
                  height: 66,
                  width: 66,
                  child: Image.asset('assets/icons/icon.png'),
                ),
                const Text(
                  'Digite seu número de',
                  style: TextStyle(fontFamily: 'PTSans', fontSize: 28),
                ),
                const Text(
                  'celular',
                  style: TextStyle(fontFamily: 'PTSans', fontSize: 28),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text('Nós lhe enviaremos um código de verificação'),
                ),
                SizedBox(
                  width: screenSize.width * 0.80,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                        child: TextField(
                      enabled: false,
                      controller: TextEditingController(text: text),
                      style: const TextStyle(fontSize: 30),
                    )),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: screenSize.width * 0.90,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              child: const Text(
                'Compre agora',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            width: screenSize.width * 0.90,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children:  [
                  Text('Ao clicar em “Continuar” você concorda com nossos'),
                  InkWell(child: Text('termos de uso', style: TextStyle(color: Color(0xFF006E28))), onTap: () {},),
                ],
              ),
            ),
          ),
          CustonKeyboardLoginPage(screenSize: screenSize, onKeyPressed: _onKeyPressed),
        ],
      ),
    );
  }
}
