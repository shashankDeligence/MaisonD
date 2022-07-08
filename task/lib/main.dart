import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UISCREEN(),
    );
  }
}

class UISCREEN extends StatefulWidget {
  UISCREEN({Key? key}) : super(key: key);

  @override
  State<UISCREEN> createState() => _UISCREENState();
}

class _UISCREENState extends State<UISCREEN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Feeds',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.indigo)),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.message,
            color: Colors.black,
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(16)),
                          height: 100,
                          width: 80,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black,
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey, width: 2)),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Text(
                          'What do you think',
                          style: TextStyle(color: Colors.grey),
                        ),
                      )),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.photo_library_outlined,
                  size: 30,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'John Smith',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        '33 mins',
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Icon(
                        Icons.account_box_rounded,
                        size: 16,
                      ),
                    ],
                  )
                ],
              ),
              trailing: Icon(
                Icons.link_off,
                color: Colors.red,
              ),
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
