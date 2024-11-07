import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  final int currentIndex;

  const CustomBottomBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'Tugas 3.1',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'Tugas 3.2',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'Tugas 3.3',
        ),
      ],
      currentIndex: currentIndex, // Index untuk Tugas31
      onTap: (index) {
        if (index == 0) {
          Navigator.pushNamed(context, '/'); // Arahkan ke Tugas32
        }
        if (index == 1) {
          Navigator.pushNamed(context, '/tugas-3-2'); // Arahkan ke Tugas32
        }
        if (index == 2) {
          Navigator.pushNamed(context, '/tugas-3-3'); // Arahkan ke Tugas32
        }
      },
    );
  }
}
