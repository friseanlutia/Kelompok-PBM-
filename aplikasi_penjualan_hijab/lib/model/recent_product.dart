import 'package:flutter/material.dart';

class RecentProduct extends StatelessWidget {
  final productlist = [
    {
      'name': "Hijab Segi Empat Corak",
      'image': 'assets/images/Hijab Segi Empat Corak.jfif',
      'price': "Rp. 35.000",
    },
    {
      'name': "Hijab Segi Empat Polos",
      'image': 'assets/images/Hijab Segi Empat Polos.jpg',
      'price': "Rp. 30.000",
    },
    {
      'name': "Hijab Bergo Pendek",
      'image': 'assets/images/Hijab Bergo Pendek.jpg',
      'price': "Rp. 15.000",
    },
    {
      'name': "Hijab Pashmina",
      'image': 'assets/images/Hijab Pashmina.jpg',
      'price': "Rp. 25.000",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productlist.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.70),
      itemBuilder: (BuildContext context, int index) {
        return RecentSignleProducts(
          recent_signle_prod_name: productlist[index]['name'],
          recent_signle_prod_image: productlist[index]['image'],
          recent_signle_prod_price: productlist[index]['price'],
        );
      },
    );
  }
}

class RecentSignleProducts extends StatelessWidget {
  final recent_signle_prod_name;
  final recent_signle_prod_image;
  final recent_signle_prod_price;

  RecentSignleProducts({
    this.recent_signle_prod_name,
    this.recent_signle_prod_image,
    this.recent_signle_prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 180,
          width: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 255, 255, 255),
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 89, 114, 152), blurRadius: 4)
              ]),
          child: Image.asset(recent_signle_prod_image),
        ),
        ListTile(
          title: Text(recent_signle_prod_name),
          subtitle: Text(recent_signle_prod_price),
        )
      ],
    );
  }
}
