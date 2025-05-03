import 'package:aplikasi2/login_screen.dart';
import 'package:flutter/material.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key, required this.nama});

  final String nama;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Profil $nama')),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Center(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: <Widget>[
                const CircleAvatar(radius: 80),
                GestureDetector(
                  onTap: () {},
                  child: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.edit, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            'Data Mahasiswa',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Nama'),
            subtitle: Text(nama),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.badge),
            title: Text('NIM'),
            subtitle: Text('1234567890'),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.school),
            title: Text('Program Studi'),
            subtitle: Text('D4 Teknologi Rekayasa Perangkat Lunak'),
          ),
          const SizedBox(height: 30),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => const LoginScreen()),
                );
              },
              child: const Text('Logout'),
            ),
          ),
        ],
      ),
    );
  }
}
