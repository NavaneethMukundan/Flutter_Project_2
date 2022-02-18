import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(10),
      itemBuilder: (ctx , Index){
      return const Card(
        elevation: 0,
        child: ListTile(
          leading: CircleAvatar(
            radius: 55,
            child: Text('10\nDEC',
            textAlign: TextAlign.center,
            )),
          title: Text('RS 100000'),
          subtitle: Text('Travel'),
        ),
      );
    },
     separatorBuilder: (ctx, Index){
       return SizedBox(
         height: 10,
       );
     },
      itemCount: 10);
  }
}