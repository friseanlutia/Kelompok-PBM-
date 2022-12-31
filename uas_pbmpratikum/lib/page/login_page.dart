import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uas_pbmpratikum/page/home_page.dart';
import 'package:uas_pbmpratikum/widgets/backgound_image.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final Future<SharedPreferences> _preference = SharedPreferences.getInstance();
  bool _booleanvalue = false;

  void _isBool() async {
    final SharedPreferences prefs = await _preference;

    setState(() {
      _booleanvalue = !_booleanvalue;
      if (_booleanvalue == true) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ));
      }
    });
    prefs.setBool('booleanvalue', _booleanvalue);
  }

  _getBool() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _booleanvalue = prefs.getBool('booleanvalue') ?? _booleanvalue;
      if (_booleanvalue == true) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ));
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _getBool();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    height: 450,
                    child: Center(
                      child: Text(
                        'RumpiYuuk',
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255),
                          shadows: [
                            Shadow(
                              blurRadius: 5,
                              offset: Offset(6, 4),
                              color: Color.fromARGB(255, 100, 132, 181),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: 280,
                      height: 50,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 100, 132, 181),
                          primary: const Color.fromARGB(255, 255, 255, 255),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: _isBool,
                        child: const Text(
                          "LETS START",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
