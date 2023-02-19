import 'package:flutter/material.dart';
// import 'package:myumsida/src/login/login.dart';
import 'package:myumsida/src/tema/tema.dart';
import 'dart:async';
// import 'package:rive/rive.dart';
import 'package:myumsida/src/splashscreen/splash.dart';
// import 'package:mysql1/mysql1.dart';
// import 'package:sqflite/sqflite.dart';
import 'package:flutter/services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Umsida',
      theme: ThemeData(
        primarySwatch: TemaWarna.gelap,
      ),
      home: const Splash(),
    );
  }
}

//coba rive
// class RiveApp extends StatefulWidget {
//   const RiveApp({super.key});

//   @override
//   State<RiveApp> createState() => _RiveAppState();
// }

// class _RiveAppState extends State<RiveApp> {
//   late RiveAnimationController _controller;
//   void _togglePlay() =>
//       setState(() => _controller.isActive = !_controller.isActive);
//   bool get isPlaying => _controller.isActive;
//    @override
//   void initState() {
//     super.initState();
//     _controller = SimpleAnimation('idle');
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Rive App'),
//       ),
//       body: const Center(
//         child: RiveAnimation.asset(
//           'assets/RIVE/6.riv',
//           controllers: [_controller],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _togglePlay,
//         tooltip: isPlaying ? 'Pause' : 'Play',
//         child: Icon(
//           isPlaying ? Icons.pause : Icons.play_arrow,
//         ),
//       ),
//     );
//   }
// }
