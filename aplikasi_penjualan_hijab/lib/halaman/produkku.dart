import 'package:aplikasi_penjualan_hijab/halaman/keranjang.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
                children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Color.fromARGB(255, 89, 114, 152),
                        )),
                  ),
                  Column(
                    children: [
                      Text(
                        "Keranjang",
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
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              child: Column(children: [
                BagPage(),
              ]),
            ),
          
                ],
              ),
          )),
    );
  }
}
