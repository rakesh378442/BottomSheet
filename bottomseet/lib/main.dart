import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomSeetScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BottomSeetScreen extends StatefulWidget {
  const BottomSeetScreen({super.key});

  @override
  State<BottomSeetScreen> createState() => _BottomSeetScreenState();
}

class _BottomSeetScreenState extends State<BottomSeetScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Bottom Sheet Page"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Bottom Sheet Back"),
                      ),
                    );
                  },
                );
              },
              child: Text("Bottom Sheet"),
            ),
          ],
        ),
      ),
    );
  }
}
