// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myumsida/src/dashboard/notifikasi/notifikasi.dart';

import 'package:myumsida/src/data/datamahasiswa.dart';
import 'package:myumsida/src/profile/profile.dart';
import 'package:myumsida/src/login/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'dart:async';
import 'package:myumsida/src/dashboard/tabs/beranda.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late SharedPreferences logindata;
  String? username;

  @override
  void initState() {
    super.initState();
    initial();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Image.asset(
                'assets/icons/iconss/menu.png',
                scale: 14,
              ),
              tooltip: "Menu",
            );
          },
        ),
        title: const Text(
          'Dashboard',
          style: TextStyle(
            fontFamily: 'SFPro',
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Profile(),
                  ),
                );
              },
              icon: Image.asset('assets/icons/iconss/profile.png'))
        ],
      ),
      body: const Beranda(),
      drawer: SafeArea(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
          child: Drawer(
            surfaceTintColor: Colors.white,
            backgroundColor: Colors.white,
            child: ListView(
              children: [
                DrawerHeader(
                  duration: const Duration(seconds: 6),
                  decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(20)),
                      color: Color.fromARGB(255, 142, 146, 153),
                      shape: BoxShape.rectangle),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        iconSize: 80,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Profile()));
                        },
                        icon: const CircleAvatar(
                          radius: 100,
                          backgroundImage: NetworkImage(
                              'https://media.licdn.com/dms/image/D4D03AQFm99I7ryL32g/profile-displayphoto-shrink_400_400/0/1675770329460?e=1681344000&v=beta&t=nwFb-HReo4mBif-VHwMh9HkTMPfu_0gzhajFef5Qb_o'),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            Data().datamahasiswa['nama'].toString(),
                            style: const TextStyle(
                                fontFamily: 'SFPro',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            Data().datamahasiswa['nim'].toString(),
                            style: const TextStyle(
                                fontFamily: 'SFPro',
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icons/iconss/home.png',
                      scale: 14,
                    ),
                    title: const Text(
                      'Beranda',
                      style: TextStyle(
                          fontFamily: 'SFPro',
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {},
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icons/iconss/notif.png',
                      scale: 14,
                    ),
                    title: const Text(
                      'Notifkasi',
                      style: TextStyle(
                          fontFamily: 'SFPro',
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Notifikasi()));
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icons/iconss/edit.png',
                      scale: 14,
                    ),
                    title: const Text(
                      'KRS',
                      style: TextStyle(
                          fontFamily: 'SFPro',
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {},
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icons/iconss/law.png',
                      scale: 14,
                    ),
                    title: const Text(
                      'Penangguhan',
                      style: TextStyle(
                          fontFamily: 'SFPro',
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {},
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icons/iconss/calendar.png',
                      scale: 14,
                    ),
                    title: const Text(
                      'Jadwal Kuliah',
                      style: TextStyle(
                          fontFamily: 'SFPro',
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {},
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icons/iconss/money-mid.png',
                      scale: 9,
                    ),
                    title: const Text(
                      'Keuangan',
                      style: TextStyle(
                          fontFamily: 'SFPro',
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {},
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icons/iconss/wali-mid.png',
                      scale: 14,
                    ),
                    title: const Text(
                      'Perwalian',
                      style: TextStyle(
                          fontFamily: 'SFPro',
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {},
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icons/iconss/thropy.png',
                      scale: 14,
                    ),
                    title: const Text(
                      'Poin',
                      style: TextStyle(
                          fontFamily: 'SFPro',
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {},
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icons/iconss/task-mid.png',
                      scale: 16,
                    ),
                    title: const Text(
                      'Presensi Kegiatan',
                      style: TextStyle(
                          fontFamily: 'SFPro',
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {},
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icons/iconss/chartup.png',
                      scale: 14,
                    ),
                    title: const Text(
                      'IPK',
                      style: TextStyle(
                          fontFamily: 'SFPro',
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {},
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icons/iconss/report-mid.png',
                      scale: 15,
                    ),
                    title: const Text(
                      'KHS',
                      style: TextStyle(
                          fontFamily: 'SFPro',
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {},
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icons/iconss/transkrip-mid.png',
                      scale: 15,
                    ),
                    title: const Text(
                      'Transkrip',
                      style: TextStyle(
                          fontFamily: 'SFPro',
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {},
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icons/iconss/library.png',
                      scale: 14,
                    ),
                    title: const Text(
                      'Perpustakaan',
                      style: TextStyle(
                          fontFamily: 'SFPro',
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {},
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icons/iconss/sipers-mid.png',
                      scale: 14,
                    ),
                    title: const Text(
                      'Sipresmawa',
                      style: TextStyle(
                          fontFamily: 'SFPro',
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {},
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icons/iconss/about-mid.png',
                      scale: 14,
                    ),
                    title: const Text(
                      'Tentang',
                      style: TextStyle(
                          fontFamily: 'SFPro',
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {},
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icons/iconss/logout-mid.png',
                      scale: 16,
                    ),
                    title: const Text(
                      'Log out',
                      style: TextStyle(
                          fontFamily: 'SFPro',
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () async {
                      _showAlertDialog(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //Fungsi alert dialog untuk keluar
  void _showAlertDialog(BuildContext context) async {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text(
          'Keluar',
          style: TextStyle(fontSize: 19),
        ),
        content: const Text(
          'Apakah anda yakin untuk keluar dari akun ini?',
          style: TextStyle(fontSize: 17),
        ),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Batal',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          CupertinoDialogAction(
            isDestructiveAction: true,
            onPressed: () async {
              logindata.setBool('login', true);
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                  (route) => false);
            },
            child: const Text('Keluar', style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
    );
  }
}
