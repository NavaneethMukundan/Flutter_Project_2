import 'package:flutter/material.dart';
import 'package:flutter_project_2/category/expence_category.dart';
import 'package:flutter_project_2/category/income_catagory.dart';
import 'package:flutter_project_2/db/category/category_db.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    CategoryDB().getCategoies().then((value){
      print('Categories get');
      print(value.toString());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          tabs: const [
            Tab(
              text: 'INCOME',
            ),
            Tab(
              text: 'EXPENSE',
            ),
          ],
        ),
        Expanded(
          child: TabBarView(controller: _tabController, children: const [
            IncomeCategory(),
            ExpenceCategory(),
          ]),
        )
      ],
    );
  }
}
