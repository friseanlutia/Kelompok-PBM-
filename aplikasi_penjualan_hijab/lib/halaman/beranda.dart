import 'package:aplikasi_penjualan_hijab/model/recent_product.dart';
import 'package:flutter/material.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({super.key});

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(80),
                    ),
                    child: Builder(
                      builder: (context) => IconButton(
                        color: const Color.fromARGB(255, 89, 114, 152),
                        iconSize: 40,
                        icon:
                            const Icon(Icons.subdirectory_arrow_left_outlined),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "FASEL",
                        style: TextStyle(
                            color: Color.fromARGB(255, 89, 114, 152),
                            fontSize: 24,
                            fontFamily: 'CaveatBrush',
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 89, 114, 152),
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/profil.png'),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 2),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 89, 114, 152),
                                  blurRadius: 4)
                            ],
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Color.fromARGB(255, 89, 114, 152),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                        image: DecorationImage(
                            image: AssetImage("assets/images/2.jfif"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                        image: DecorationImage(
                            image: AssetImage("assets/images/3.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                        image: const DecorationImage(
                            image: AssetImage("assets/images/4.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Category(
                      press: () {},
                      text: 'Recomendation',
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Category(
                      press: () {},
                      text: 'Pashmina',
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Category(
                      press: () {},
                      text: 'Segi Empat',
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Category(
                      press: () {},
                      text: 'Bergo',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(height: 300, child: RecentProduct())
            ],
          ),
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: press,
        child: Container(
          color: Colors.white,
          child: Chip(
            backgroundColor: Color.fromARGB(255, 89, 114, 152),
            label: Row(
              children: [
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'CaveatBrush',
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
