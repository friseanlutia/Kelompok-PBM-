import 'package:aplikasi_penjualan_hijab/widget/profil_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Profil',
              style: TextStyle(
                  color: Color.fromARGB(255, 89, 114, 152),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              width: 150,
              child: const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 89, 114, 152),
                radius: 60,
                backgroundImage: AssetImage('assets/images/profil.png'),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color.fromARGB(255, 89, 114, 152),
                  width: 5.0,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'edit profil',
              style: TextStyle(
                color: Color.fromARGB(255, 89, 114, 152),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: size.height * .7,
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  ProfileWidget(
                    icon: Icons.person,
                    title: 'Nama',
                  ),
                  ProfileWidget(
                    icon: Icons.mail,
                    title: 'Email',
                  ),
                  ProfileWidget(
                    icon: Icons.key,
                    title: 'Password',
                  ),
                  ProfileWidget(
                    icon: Icons.chat,
                    title: 'No Hp',
                  ),
                  ProfileWidget(
                    icon: Icons.share_location,
                    title: 'Alamat',
                  ),
                  ProfileWidget(
                    icon: Icons.logout,
                    title: 'Log Out',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
