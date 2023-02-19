import 'package:flutter/material.dart';
import 'package:myumsida/src/models/modelspengumuman.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  List<String> images = [
    'https://my.umsida.ac.id/dist/images/slider/s1.png',
    'https://my.umsida.ac.id/dist/images/slider/s2.png',
    'https://my.umsida.ac.id/dist/images/slider/s3.png',
    'https://my.umsida.ac.id/dist/images/slider/s4.png',
    'https://my.umsida.ac.id/dist/images/slider/s5.png'
  ];
  final _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  int? activePage;

  @override
  Widget build(BuildContext context) {
    //Container
    return Container(
      color: Colors.transparent,
      height: double.infinity,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const SizedBox(height: 20),
          SizedBox(
            height: 145,
            width: MediaQuery.of(context).size.width,
            child: Container(
              color: Colors.transparent,
              child: PageView.builder(
                itemCount: images.length,
                pageSnapping: true,
                controller: _pageController,
                onPageChanged: (page) {
                  setState(
                    () {
                      activePage = page;
                    },
                  );
                },
                itemBuilder: (context, pagePosition) {
                  bool active = pagePosition == activePage;
                  return slider(images, pagePosition, active);
                },
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: indicators(images.length, activePage),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Pengumuman Akademik',
                      style: TextStyle(
                          fontFamily: 'SFPro',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    const Divider(
                      color: Colors.black87,
                      thickness: 2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // ListView.builder(
                    //   itemCount: 100,
                    //   itemBuilder: (context, index) {
                    //     return PengumumanModels();
                    //   },
                    // )
                    PengumumanModels()
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  //list current images
  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(
      imagesLength,
      (index) {
        return Container(
          margin: const EdgeInsets.all(3),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              color:
                  currentIndex == index ? Colors.blue.shade700 : Colors.black12,
              shape: BoxShape.circle),
        );
      },
    );
  }

  //animation shade for slide
  AnimatedContainer slider(images, pagePosition, active) {
    double margin = active ? 0 : 15;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOutCubic,
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(images[pagePosition]),
        ),
      ),
    );
  }

//   List<PengumumanModels> items =
//       List.generate(15, (index) => PengumumanModels());
}
