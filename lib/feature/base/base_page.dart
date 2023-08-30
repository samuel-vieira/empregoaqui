import 'package:emprego_aqui/feature/home/page/home_page.dart';
import 'package:emprego_aqui/feature/vagas/widgets/vagas_lista_widget.dart';
import 'package:emprego_aqui/shared/app_bar_component/app_bar_component.dart';
import 'package:flutter/material.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  final List<Widget> widgetOptions = [
    const HomePage(),
    const VagasListaWidget(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(
        AppBar(),
        title: 'Home',
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: widgetOptions.elementAt(currentIndex),
      ),
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
