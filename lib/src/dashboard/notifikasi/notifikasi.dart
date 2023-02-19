import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Notifikasi extends StatefulWidget {
  const Notifikasi({super.key});

  @override
  State<Notifikasi> createState() => _NotifikasiState();
}

class _NotifikasiState extends State<Notifikasi> {
  int page = 1;
  bool hasMore = true;

  List<String> items = List.generate(15, (index) => 'Items${index + 1}');

  final controller = ScrollController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.offset) {
        fetch();
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future fetch() async {
    const limit = 25;
    final url = Uri.parse(
        'https://jsonplaceholder.typicode.com/posts?_limit=$limit&_page=$page');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List newItems = json.decode(response.body);
      setState(() {
        page++;
        if (newItems.length < limit) {
          hasMore = false;
        }
        items.addAll(newItems.map<String>((item) {
          final number = item['id'];
          return 'Items $number';
        }).toList());
      });
    } else if (response.statusCode != 200) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          controller: controller,
          padding: const EdgeInsets.all(10),
          itemCount: items.length + 1,
          itemBuilder: (context, index) {
            if (index < items.length) {
              final item = items[index];
              return ListTile(
                title: Text(item),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: Center(
                  child: hasMore
                      ? const CircularProgressIndicator()
                      : const Text('Tidak ada data'),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
