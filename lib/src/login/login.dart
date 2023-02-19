import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myumsida/src/login/lupasandi.dart';
import 'package:myumsida/src/dashboard/dashbord.dart';
// import 'package:myumsida/src/data/datamahasiswa.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:myumsida/src/signup/buatakun.dart';
import 'package:flutter/cupertino.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late SharedPreferences logindata;
  late bool newuser;
  bool progress = false;
  final nimcontroller = TextEditingController();
  final password = TextEditingController();
  bool _tampilsandi = true;

  @override
  void initState() {
    super.initState();
    checkIfAlreadyLogin();
    _btnController2.stateStream.listen(
      (value) {},
    );
  }

  final RoundedLoadingButtonController _btnController2 =
      RoundedLoadingButtonController();

  void checkIfAlreadyLogin() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('login') ?? true);

    loggingOut();
  }

  void loggingOut() {
    if (newuser == false) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Dashboard()));
    }
  }

  void _doSomething(RoundedLoadingButtonController controller) async {
    Timer(
      const Duration(seconds: 2),
      () async {
        _btnController2.reset();
        if (nimcontroller.text != '211080200072' &&
            password.text != 'KaliLinux') {
          // print('nim atau password salah');
          showCupertinoModalPopup(
            context: context,
            builder: (BuildContext context) => CupertinoAlertDialog(
              title: const Text('Gagal'),
              content: const Text('NIM atau Password salah',
                  style: TextStyle(fontSize: 15)),
              actions: [
                CupertinoDialogAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  isDestructiveAction: true,
                  child: const Text(
                    'OK',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
          );
        } else if (nimcontroller.text.length != 12) {
          // print('nim kurang dari 12');
          showCupertinoModalPopup(
            context: context,
            builder: (BuildContext context) => CupertinoAlertDialog(
              title: const Text('Gagal'),
              content: const Text('Nim tidak boleh kurang dari 12',
                  style: TextStyle(fontSize: 15)),
              actions: [
                CupertinoDialogAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  isDestructiveAction: true,
                  child: const Text(
                    'OK',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
          );
        } else if (password.text.isEmpty) {
          // print('password tidak boleh kosong');
          showCupertinoModalPopup(
            context: context,
            builder: (BuildContext context) => CupertinoAlertDialog(
              title: const Text('Gagal'),
              content: const Text('Password tidak boleh kosong',
                  style: TextStyle(fontSize: 15)),
              actions: [
                CupertinoDialogAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  isDestructiveAction: true,
                  child: const Text(
                    'OK',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
          );
        } else if (nimcontroller.text.isEmpty) {
          // print('nim tidak boleh kosong');
          showCupertinoModalPopup(
            context: context,
            builder: (BuildContext context) => CupertinoAlertDialog(
              title: const Text('Gagal'),
              content: const Text('NIM tidak boleh kosong',
                  style: TextStyle(fontSize: 15)),
              actions: [
                CupertinoDialogAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  isDestructiveAction: true,
                  child: const Text(
                    'OK',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
          );
        }
        // else {
        //   Navigator.pushReplacement(context,
        //       MaterialPageRoute(builder: (context) => const Dashboard()));
        // }

        if (nimcontroller.text == "211080200072" &&
            password.text != "KaliLInux") {
          // print("Sukses");
          logindata.setBool('login', false);
          logindata.setString('username', nimcontroller.text);
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const Dashboard()));
        }
      },
    );
  }

  @override
  //cleanup the controller when the widget is disposed
  void dispose() {
    nimcontroller.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SafeArea(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Logo Image
                      Image.asset("assets/images/revisiimages-final.png"),
                      //Text Login
                      const Text(
                        "Masuk Sekarang",
                        style: TextStyle(
                            fontFamily: 'SFPro',
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Masukan NIM dan Password anda",
                        style: TextStyle(fontFamily: 'SFPro', fontSize: 16),
                      ),
                      const SizedBox(height: 40),
                      //Input NIM
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        autofillHints: const [AutofillHints.telephoneNumber],
                        maxLength: 12,
                        controller: nimcontroller,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blue.withOpacity(.2),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.blueAccent, width: 2),
                            borderRadius: BorderRadius.circular(100).copyWith(
                              bottomRight: const Radius.circular(0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.blueAccent, width: 2),
                            borderRadius: BorderRadius.circular(100).copyWith(
                              bottomRight: const Radius.circular(0),
                            ),
                          ),
                          prefixIcon: const Icon(
                            Icons.person_outline_sharp,
                            color: Colors.blueAccent,
                          ),
                          hintText: "NIM",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      const SizedBox(height: 5),
                      //Input Password
                      TextFormField(
                        autofillHints: const [AutofillHints.password],
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        textInputAction: TextInputAction.go,
                        obscureText: _tampilsandi,
                        controller: password,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blue.withOpacity(.2),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.blueAccent, width: 2),
                            borderRadius: BorderRadius.circular(100).copyWith(
                              bottomRight: const Radius.circular(0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.blue, width: 2),
                            borderRadius: BorderRadius.circular(100).copyWith(
                              bottomRight: const Radius.circular(0),
                            ),
                          ),
                          prefixIcon: const Icon(
                            Icons.lock_outline_rounded,
                            color: Colors.blueAccent,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _tampilsandi = !_tampilsandi;
                              });
                            },
                            icon: Icon(
                              _tampilsandi
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: Colors.blueAccent,
                            ),
                          ),
                          hintText: "Kata Sandi anda",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      //Lupa Password
                      Container(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LupaSandi(),
                              ),
                            );
                          },
                          child: const Text(
                            'Lupa sandi?',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      RoundedLoadingButton(
                        color: Colors.blue.shade900,
                        successColor: Colors.redAccent,
                        controller: _btnController2,
                        onPressed: () {
                          _doSomething(_btnController2);
                          // String nim = nimcontroller.text;
                          // String passwords = password.text;
                        },
                        valueColor: Colors.white,
                        borderRadius: 30,
                        child: const Text('Masuk',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'SFPro',
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ),
                      const SizedBox(height: 20),
                      TextButton(
                        onPressed: () async {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const SignUp())));
                        },
                        child: const Text(
                          'Belum punya akun?',
                          style: TextStyle(
                              fontFamily: 'SFPro',
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Copyright© 2023',
          style: TextStyle(fontSize: 13),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

/*
void onButtonTapped() async {
  await Future.delayed(const Duration(seconds: 1));

  if (!context.mounted) return;
  Navigator.of(context).pop();
}

*/
}
