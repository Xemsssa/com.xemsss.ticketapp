import 'package:flutter/material.dart';
import 'package:test_app/screens/AllHotels.dart';
import 'package:test_app/screens/AllTickets.dart';
import 'package:test_app/screens/EditProfileScreen.dart';
import 'package:test_app/screens/bottom_bar.dart';
import 'package:test_app/utils/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticket booking apps',
      theme: ThemeData(
        primaryColor: primary
      ),
      home: const BottomBar(),
      routes: {
        // '/': (context) => const BottomBar(),
        '/all_tickets': (context) => const Alltickets(),
        '/all_hotels': (context) => const AllHotels(),
        'edit_profile_screen': (context) => const EditProfileScreen()
      }
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
