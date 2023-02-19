import 'package:flutter/material.dart';
import 'package:myumsida/src/data/datamahasiswa.dart';
import 'package:myumsida/src/profile/lokasi.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green.shade50,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
        ),
        title: const Text(
          'Profilku',
          style: TextStyle(
              fontFamily: 'SFPro',
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.green.shade50),
        child: ListView(
          padding: const EdgeInsets.all(25),
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 55,
                  backgroundImage: NetworkImage(
                      'https://media.licdn.com/dms/image/D4D03AQFm99I7ryL32g/profile-displayphoto-shrink_400_400/0/1675770329460?e=1681344000&v=beta&t=nwFb-HReo4mBif-VHwMh9HkTMPfu_0gzhajFef5Qb_o'),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Data().datamahasiswa['nama'].toString(),
                      style: const TextStyle(
                          fontFamily: 'SFPro',
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      Data().datamahasiswa['nim'].toString(),
                      style: const TextStyle(
                          fontFamily: 'SFPro',
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      Data().datamahasiswa['prodi'].toString(),
                      style: const TextStyle(
                          fontFamily: 'SFPro',
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(50, 20),
                  backgroundColor: Colors.green.shade400),
              onPressed: () {},
              icon: const Icon(Icons.mode_edit_outline_outlined),
              label: const Text('Edit'),
            ),
            const SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height / 1.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Card(
                    child: ListTile(
                      leading: const Icon(
                        Icons.place,
                        size: 32,
                      ),
                      title: const Text(
                        'Alamat',
                        style: TextStyle(
                            fontFamily: 'SFPro',
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Lokasiku(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
