import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset("assets/images/instagram.svg"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: <Widget>[
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: const Text('Page 1'),
          ),
          Container(
            color: Colors.green,
            alignment: Alignment.center,
            child: const Text('Page 2'),
          ),
          Container(
            color: Colors.blue,
            alignment: Alignment.center,
            child: const Text('Page 3'),
          ),
          Container(
            color: Colors.purple,
            alignment: Alignment.center,
            child: const Text('Page 4'),
          ),
        ][currentPageIndex],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'search',
          ),
          NavigationDestination(
            icon: Icon(Icons.add),
            label: 'add',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}
