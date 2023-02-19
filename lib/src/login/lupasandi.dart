import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class LupaSandi extends StatefulWidget {
  const LupaSandi({super.key});

  @override
  State<LupaSandi> createState() => _LupaSandiState();
}

class _LupaSandiState extends State<LupaSandi> {
  bool progress = false;
  final _nimcontroller = TextEditingController();
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 22,
            )),
        title: const Text(
          'Lupa Sandi',
          style: TextStyle(
              fontFamily: 'SFPro',
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            const Text(
              'Masukkan NIM anda',
              style: TextStyle(
                  fontFamily: 'SFPro',
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            TextFormField(
              keyboardType: TextInputType.number,
              maxLength: 12,
              controller: _nimcontroller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.blue.withOpacity(.2),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Colors.blueAccent, width: 2),
                  borderRadius: BorderRadius.circular(100).copyWith(
                    bottomRight: const Radius.circular(0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(100).copyWith(
                    bottomRight: const Radius.circular(0),
                  ),
                ),
                prefixIcon: const Icon(Icons.person),
                hintText: "NIM anda",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Kembali ke Halaman Login',
                  style: TextStyle(color: Colors.blue),
                )),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade900,
                padding: const EdgeInsets.symmetric(
                    horizontal: 40.0, vertical: 12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                if (_nimcontroller.text.isEmpty) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        elevation: 0,
                        title: const Text('Gagal'),
                        content: const Text('Mohon isi NIM anda'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                } else if (_nimcontroller.text.length < 12) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        elevation: 0,
                        title: const Text('Gagal'),
                        content: const Text(
                            'NIM kurang dari 12, Mohon isi dengan benar!'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Platform.isIOS
                          ? CupertinoAlertDialog(
                              title: const Text('Sukses'),
                              content:
                                  const Text('Berhasil request lupa sandi'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                      ..pop()
                                      ..pop();
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            )
                          : AlertDialog(
                              elevation: 0,
                              title: const Text('Sukses'),
                              content:
                                  const Text('Berhasil request lupa sandi'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                      ..pop()
                                      ..pop();
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            );
                    },
                  );
                  // print(_nimcontroller.text);
                }
              },
              child: const Text(
                'Kirim',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
