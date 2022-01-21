import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(app());
}

class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: _value == false ? Colors.brown : Colors.blueGrey,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 2),
              height: _value == false ? 100 : 220,
              width: _value == false ? 150 : 320,
              color: _value == false ? Colors.white : Colors.lightGreen,
              child: Center(
                child: Text(
                  _value == false
                      ? 'Your Switch is inactive'
                      : 'Your Switch is active',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: _value == false ? 14 : 32,
                    color: _value == false ? Colors.black : Colors.white,
                  ),
                ),
              ),
            ),
            Center(
              child: Switch(
                inactiveTrackColor: Colors.white,
                activeTrackColor: Colors.white,
                activeColor: Colors.green,
                inactiveThumbColor: Colors.red,
                value: _value,
                onChanged: (val) {
                  setState(() {
                    _value = val;
                    print(_value);
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
