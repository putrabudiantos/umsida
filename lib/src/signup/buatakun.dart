import 'package:myumsida/src/data/generatenim.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  final String? restorationId;
  const SignUp({super.key, this.restorationId});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> with RestorationMixin {
  @override
  String? get restorationId => widget.restorationId;

  final RestorableDateTime _selectedDate =
      RestorableDateTime(DateTime(2021, 7, 25));
  late final RestorableRouteFuture<DateTime?> _restorableDatePickerRouteFuture =
      RestorableRouteFuture<DateTime?>(
    onComplete: _selectDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _datePickerRoute,
        arguments: _selectedDate.value.millisecondsSinceEpoch,
      );
    },
  );

  static Route<DateTime> _datePickerRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return DialogRoute<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return DatePickerDialog(
          restorationId: 'date_picker_dialog',
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          initialDate: DateTime.fromMillisecondsSinceEpoch(arguments! as int),
          firstDate: DateTime(1970),
          lastDate: DateTime(2023),
        );
      },
    );
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedDate, 'selected_date');
    registerForRestoration(
        _restorableDatePickerRouteFuture, 'date_picker_route_future');
  }

  final nimc = TextEditingController();
  final namac = TextEditingController();
  final passwc = TextEditingController();
  final prodic = TextEditingController();
  final alamatc = TextEditingController();
  final kelasc = TextEditingController();
  final fakultasc = TextEditingController();
  final smesterc = TextEditingController();
  final imageurlc = TextEditingController();
  final tanggalc = TextEditingController();

  void _selectDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _selectedDate.value = newSelectedDate;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
              'Selected: ${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year}'),
        ));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var obj = GenerateNumber();
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
          ),
        ),
        title: const Text(
          'Buat Akun Baru',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'SFPro',
              color: Colors.black),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: const Text(
              'Daftar menjadi Mahasiswa Baru',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 27,
                  fontFamily: 'SFPro',
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width / 1.8,
            decoration: const BoxDecoration(color: Colors.transparent),
            child: Image.asset(
              'assets/images/revisiimages-final.png',
              fit: BoxFit.cover,
            ),
          ),

          //input type
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.number,
            readOnly: true,
            maxLength: 12,
            controller: nimc,
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
              prefixIcon: const Icon(
                Icons.numbers,
                color: Colors.blueAccent,
              ),
              hintText: "211${obj.getRandomString(9)}",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.name,
            controller: namac,
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
              prefixIcon: const Icon(
                Icons.person_outline_rounded,
                color: Colors.blueAccent,
              ),
              hintText: "Nama Anda",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.name,
            controller: alamatc,
            autofillHints: const [AutofillHints.addressCity],
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
              prefixIcon: const Icon(
                Icons.place_outlined,
                color: Colors.blue,
              ),
              hintText: "Alamat",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.name,
            controller: prodic,
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
              prefixIcon: const Icon(
                Icons.science_outlined,
                color: Colors.blue,
              ),
              hintText: "Prodi",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          const SizedBox(height: 15),
          OutlinedButton(
            onPressed: () {
              _restorableDatePickerRouteFuture.present();
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
            ),
            child: const Text(
              'Pilih Tanggal Lahir',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
