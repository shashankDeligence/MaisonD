import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 25,
        itemBuilder: (context, index) {
          return const ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://picsum.photos/200/300'),
            ),
            title: Text('Shashank'),
            subtitle: Text("shashank@gmail.com"),
          );
        },
      ),
    );
  }
}
