import 'package:aplikasi_penjualan_hijab/halaman/beranda.dart';
import 'package:aplikasi_penjualan_hijab/halaman/produkku.dart';
import 'package:aplikasi_penjualan_hijab/halaman/profilku.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index_page = 0;
  final pages = [BerandaPage(), ProductPage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[index_page], bottomNavigationBar: MenuBawah(context));
  }

  Container MenuBawah(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 89, 114, 152),
            spreadRadius: 5,
            blurRadius: 5,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () {
                setState(() {
                  index_page = 1;
                });
              },
              icon: index_page == 1
                  ? const Icon(
                      Icons.shopping_cart_outlined,
                      color: Color.fromARGB(255, 89, 114, 152),
                      size: 40,
                    )
                  : const Icon(
                      Icons.shopping_cart,
                      color: Color.fromARGB(255, 89, 114, 152),
                      size: 40,
                    )),
          IconButton(
              onPressed: () {
                setState(() {
                  index_page = 0;
                });
              },
              icon: index_page == 0
                  ? const Icon(
                      Icons.home_outlined,
                      color: Color.fromARGB(255, 89, 114, 152),
                      size: 40,
                    )
                  : const Icon(
                      Icons.home,
                      color: Color.fromARGB(255, 89, 114, 152),
                      size: 40,
                    )),
          IconButton(
              onPressed: () {
                setState(() {
                  index_page = 2;
                });
              },
              icon: index_page == 2
                  ? const Icon(
                      Icons.person_outline,
                      color: Color.fromARGB(255, 89, 114, 152),
                      size: 40,
                    )
                  : const Icon(
                      Icons.person_pin,
                      color: Color.fromARGB(255, 89, 114, 152),
                      size: 40,
                    ))
        ],
      ),
    );
  }
}
