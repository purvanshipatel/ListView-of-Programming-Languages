import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LanguageListPage(),
    );
  }
}

class LanguageListPage extends StatelessWidget {
  const LanguageListPage({super.key});

  // Sample data
  final List<Map<String, String>> languages = const [
    {
      "name": "Dart",
      "image": "https://cdn-icons-png.flaticon.com/512/5968/5968705.png"
    },
    {
      "name": "Java",
      "image": "https://cdn-icons-png.flaticon.com/512/226/226777.png"
    },
    {
      "name": "Python",
      "image": "https://cdn-icons-png.flaticon.com/512/5968/5968350.png"
    },
    {
      "name": "C++",
      "image": "https://cdn-icons-png.flaticon.com/512/6132/6132222.png"
    },
    {
      "name": "JavaScript",
      "image": "https://cdn-icons-png.flaticon.com/512/5968/5968292.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Programming Languages - Purvanshi Patel"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: languages.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(
              languages[index]["image"]!,
              width: 40,
              height: 40,
            ),
            title: Text(languages[index]["name"]!),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Optional: Add action on tap
            },
          );
        },
      ),
    );
  }
}