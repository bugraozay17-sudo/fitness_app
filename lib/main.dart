import 'package:flutter/material.dart';

void main() {
  runApp(const FitnessApp());
}

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int index = 0;

  final pages = const [
    HomePage(),
    ProgramPage(),
    CaloriePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,

        onTap: (value) {
          setState(() {
            index = value;
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Ana Sayfa",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: "Program",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: "Kalori",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profil",
          ),
        ],
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Fitness Ana Sayfa 💪",
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}


class ProgramPage extends StatelessWidget {
  const ProgramPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Antrenman Programları 🔥",
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}


class CaloriePage extends StatelessWidget {
  const CaloriePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Kalori Hesaplama 🍎",
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Profil 👤",
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}