import 'package:flutter/material.dart';
import 'package:flutter_app/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),   
      );
  }
  
}
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPage();
}

class _CounterPage extends State<CounterPage> {
  var number = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Ini App bar"),
        ),
        body: Center(
          child: Column(
            children: [
              const Text('Nambah Terus klu ditekan'),
              Text(number.toString()),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:() {
            print('Number sebelum : $number ');
            
            setState(() {
              number++;
            });
            print('Number sesudah : $number ');
          },
          child: const Icon(Icons.add)
          ),
      ),
    );
  }
  }


