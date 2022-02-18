
import 'package:flutter/material.dart';

class ExpenceCategory extends StatelessWidget {
  const ExpenceCategory({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, Index) {
     return  Card(
       child: ListTile(
         title: Text('Expence Ctaegory $Index'),
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