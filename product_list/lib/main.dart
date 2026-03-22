import 'package:flutter/material.dart';

void main() {
  runApp(ProductList());
}

class ProductList extends StatelessWidget{
  final List<String> products = [
    'Mobile Phone',
    'Laptop',
    'Tablet',
    'Smart Watch',
    'Headphones',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Products')),

        // body: ListView.builder(
        //   itemCount: products.length,
        //   itemBuilder: (context, index) {
        //     return ListTile(
        //       leading: Icon(Icons.shopping_bag),
        //       title: Text(products[index]),
        //       trailing: Icon(Icons.arrow_forward),
        //     );
        //   },
        // ),

        // exq,ple 2 : chat list
        body: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text('Alice'),
              subtitle: Text('Hey, how are you?'),
              trailing: Text('2:30 PM'),
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text('Bob'),
              subtitle: Text('Let\'s catch up later.'),
              trailing: Text('1:15 PM'),
              ),

              ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text('John'),
              subtitle: Text('Are you coming to the meeting?'),
              trailing: Text('12:00 PM'),
              ),

              ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text('jane'),
              subtitle: Text('Don\'t forget to submit the report.'),
              trailing: Text('11:45 AM'),
              ),

              ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text('Mary'),
              subtitle: Text('Can you send me the files?'),
              trailing: Text('10:30 AM'),
              ),

              ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text('steve'),
              subtitle: Text('I will be late for the meeting.'),
              trailing: Text('9:00 AM'),
              ),
            ],
        ),
        ),
      );
  }
}