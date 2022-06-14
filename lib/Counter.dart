import 'package:flutter/material.dart';
class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter =1;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter')
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              setState(() {
                counter--;
                print(counter);
              });
            },
              child: Text('minus')),
            Padding(padding: EdgeInsets.symmetric(
                horizontal: 30.0),
            ),
            Text('$counter',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
            ),
            TextButton(onPressed: (){
              setState(() {
                counter++;
                print(counter);
              });
              }, child: Text('Plus')),
          ],
        ),
      ),
    );
  }
}

