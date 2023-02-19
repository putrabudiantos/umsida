import 'package:flutter/material.dart';

class TemplatePengumuman extends StatelessWidget {
  final String judul;
  final String isi;

  const TemplatePengumuman({super.key, required this.judul, required this.isi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 19,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Pengumuman',
          style: TextStyle(
              fontFamily: 'SFPro',
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Text(
            judul,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontFamily: 'SFPro',
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(isi)
        ],
      ),
    );
  }
}
