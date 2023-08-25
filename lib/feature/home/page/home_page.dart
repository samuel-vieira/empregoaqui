import 'package:emprego_aqui/shared/app_bar_component/app_bar_component.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> widgetOptions = [
    const Text('Page 1'),
    const Text('Page 2'),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(
        AppBar(),
        title: 'Home',
      ),
      body: widgetOptions.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List',
          ),
        ],
      ),
    );
  }
}
