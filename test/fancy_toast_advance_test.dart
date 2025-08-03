import 'package:flutter/material.dart';
import 'package:fancy_toast_advance/fancy_toast_advance.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Fancy Toast Advance Example")),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              FancyToast.show(
                context,
                message: "Advanced Fancy Toast 🎉",
                backgroundColor: Colors.deepPurple,
                textColor: Colors.white,
                icon: Icons.star,
                position: ToastPosition.top,
                borderRadius: 20,
              );
            },
            child: const Text("Show Fancy Toast"),
          ),
        ),
      ),
    );
  }
}
