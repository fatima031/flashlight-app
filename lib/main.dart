import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';
import 'package:tourchapp/screen/home_screen.dart';

void main() {
  TorchController().initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      title: "Flash Light App",
      home: const Home_View(),
    );
  }
}
