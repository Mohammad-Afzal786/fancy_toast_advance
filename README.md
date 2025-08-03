# 🎉 Fancy Toast Advance

An advanced toast notification package for Flutter.  
Show beautiful, customizable toasts with icons, colors, animations, and positioning.

![Flutter](https://img.shields.io/badge/Flutter-Framework-blue?logo=flutter)
![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)

---

## ✨ Features



✅ Show toast with icon & text  
✅ Custom colors & border radius  
✅ Top & Bottom positions  
✅ Smooth fade animation  
✅ Lightweight & Fast  
---

## 🚀 Installation

Add this to your **pubspec.yaml**:

```yaml
dependencies:
  fancy_toast_advance: ^1.0.3

``` 
---
## ⚡ Usage 

Here’s a full example showing how to use **Fancy Toast Advance** in your app:

```dart
import 'package:flutter/material.dart';
import 'package:fancy_toast_advance/fancy_toast_advance.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DemoPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fancy Toast Advance Example")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            FancyToast.show(
              context,
              message: "Hello from Fancy Toast Advance 🎉",
              backgroundColor: Colors.blue,
              textColor: Colors.white,
              icon: Icons.thumb_up,
              duration: const Duration(seconds: 4),
              borderRadius: 20,
              elevation: 8,
              position: ToastPosition.top,
            );
          },
          child: const Text("Show Toast"),
        ),
      ),
    );
  }
}
```
## 🎨 Customization

| Parameter        | Type       | Default            | Description                       |
|------------------|-----------|-------------------|-----------------------------------|
| message          | String    | required           | The text to display               |
| backgroundColor  | Color     | Colors.black87     | Toast background color            |
| textColor        | Color     | Colors.white       | Text color                        |
| icon             | IconData  | Icons.info_outline | Leading icon                      |
| duration         | Duration  | 3 seconds          | Auto dismiss duration             |
| borderRadius     | double    | 12                 | Border radius of toast            |
| elevation        | double    | 6                  | Shadow blur                       |
| position         | enum      | bottom             | Toast position (top / bottom)     |




---

💡 Made with ❤️ using Flutter by [Mohammad Afzal](https://github.com/Mohammad-Afzal786)
