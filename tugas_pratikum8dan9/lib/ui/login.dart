import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:tugas_pratikum8dan9/palatte.dart';
import 'package:tugas_pratikum8dan9/provider/change_notifier.dart';
import 'package:tugas_pratikum8dan9/ui/home.dart';
import 'package:tugas_pratikum8dan9/widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  bool isObesecure = true;

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
                children: [
                  const SizedBox(
                    height: 250,
                    child: Center(
                      child: Text(
                        'IsYourDay',
                        style: kHeading,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 48, 44, 44)
                            .withOpacity(0.6),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: TextField(
                        controller: usernameController,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 20),
                          focusColor: Color.fromARGB(255, 158, 158, 158),
                          border: InputBorder.none,
                          hintText: 'Username',
                          prefixIcon: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Icon(
                              FontAwesomeIcons.solidCircleUser,
                              color: Color.fromARGB(255, 158, 158, 158),
                              size: 30,
                            ),
                          ),
                          hintStyle: kBodyText,
                        ),
                        style: kBodyText,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 48, 44, 44)
                            .withOpacity(0.6),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: TextField(
                        controller: passwordController,
                        obscureText:
                            context.watch<stateManagement>().isObsecure,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 20),
                          border: InputBorder.none,
                          focusColor: const Color.fromARGB(255, 158, 158, 158),
                          hintText: 'Password',
                          prefixIcon: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Icon(
                              FontAwesomeIcons.unlockKeyhole,
                              color: Color.fromARGB(255, 158, 158, 158),
                              size: 30,
                            ),
                          ),
                          hintStyle: kBodyText,
                          suffixIcon: IconButton(
                              color: const Color.fromARGB(255, 158, 158, 158),
                              onPressed: () =>
                                  context.read<stateManagement>().obsecure(),
                              icon: Icon(isObesecure
                                  ? Icons.visibility
                                  : Icons.visibility_off)),
                        ),
                        style: kBodyText,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(left: 250),
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: Color.fromARGB(255, 196, 196, 196),
                            fontSize: 16),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.black87),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ));
                      },
                      child: const Text(
                        'LOGIN',
                        style: kBodyText,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
