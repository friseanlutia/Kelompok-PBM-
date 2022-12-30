import 'package:aplikasi_penjualan_hijab/halaman/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BagPage extends StatelessWidget {
  List imgList = [
    "Hijab Segi Empat Polos",
    "Hijab Bergo Pendek",
    "Hijab Pashmina"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      for (int i = 0; i < imgList.length; i++)
        Container(
            height: 110,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(children: [
              Checkbox(
                value: true,
                onChanged: (value) {},
              ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 89, 114, 152),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset("assets/images/${imgList[i]}.jpg"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      imgList[i],
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color:
                            Color.fromARGB(255, 89, 114, 152).withOpacity(0.7),
                      ),
                    ),
                    Text(
                      "Rp. 35.000",
                      style: TextStyle(
                        fontSize: 14,
                        color:
                            Color.fromARGB(255, 89, 114, 152).withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.delete,
                      color: Color.fromARGB(255, 89, 114, 152),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            CupertinoIcons.minus,
                            size: 4,
                            color: Color.fromARGB(255, 89, 114, 152),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "01",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            CupertinoIcons.plus,
                            size: 14,
                            color: Color.fromARGB(255, 89, 114, 152),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ])),
      Container(
        padding: EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Text(
              "Total Rp. 105.000",
              style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 89, 114, 152),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 89, 114, 152),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Pay Now",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      color: Colors.white.withOpacity(0.9)),
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
