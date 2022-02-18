import 'package:flutter/material.dart';

class IncomeCategory extends StatelessWidget {
  const IncomeCategory({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, Index) {
     return Card(
       child: ListTile(
         title: Text('Income Ctaegory $Index'),
         trailing: IconButton(onPressed: (){},
          icon: Icon(Icons.delete)),
       ),
     );
    },
     separatorBuilder: (ctx, Index){
       return const SizedBox(
         height: 10,
       );
     },
      itemCount: 100);
  }
}