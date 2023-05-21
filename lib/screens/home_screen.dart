import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ig_clone/pages/page3.dart';
import 'package:ig_clone/pages/page1.dart';
import 'package:ig_clone/pages/page2.dart';
import 'package:ig_clone/pages/page4.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ImageUploader());
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
        child: IndexedStack(
          index: currentPageIndex,
          children: [
            Container(
              color: Colors.white,
              alignment: Alignment.center,
              child: const Text('Page 1'),
            ),
            ImageUploader(), // Assuming ImageUploader is defined in page2.dart
            const AddPostScreen(),
            const FeedScreen(),
          ],
        ),
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
