import 'package:flutter/material.dart';
import 'package:flutter_project_2/category/category_add_popup.dart';
import 'package:flutter_project_2/category/category_screen.dart';
import 'package:flutter_project_2/home/widgets/bottom_navigation.dart';
import 'package:flutter_project_2/transaction/transaction_screen.dart';

class HomeScreen extends StatelessWidget {
 const HomeScreen({Key? key}) : super(key: key);

  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  final _pages = const [
    TransactionScreen(),
    CategoryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('MONEY MANAGER'),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavivagation(),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: selectedIndexNotifier,
          builder: (BuildContext context, int updatedIndex, _) {
            return _pages[updatedIndex];
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        if (selectedIndexNotifier.value ==0) {
          print('Add Transaction');
        }else{
          print('Add Category');

          showCategoryPopup(context);
          // final _sample = CategoryModel(
          //   id: DateTime.now().millisecondsSinceEpoch.toString(),
          //   name: 'Travel',
          //   type: CategoryType.expence
          // );
          // CategoryDB().insertCategorey(_sample);
        }
      },
      child: Icon(Icons.add),
      ),
    );
  }
}
