import 'package:flutter/material.dart';
import 'package:flutter_project_2/home/home_screen.dart';

class BottomNavivagation extends StatelessWidget {
  const BottomNavivagation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: HomeScreen.selectedIndexNotifier,
      builder: (BuildContext ctx, int updatedIndex, Widget? _) {
        return BottomNavigationBar(
          currentIndex: updatedIndex,
          onTap: (NewIndex) {
            HomeScreen.selectedIndexNotifier.value = NewIndex;
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Transaction'),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: 'Category')
          ],
        );
      },
    );
  }
}
