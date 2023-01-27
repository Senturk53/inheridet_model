import 'package:flutter/material.dart';
import 'package:inheridet_model/model.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _color = Colors.green;

  void _changeColor() {
    setState(() {
      _color = _color == Colors.green ? Colors.blue : Colors.green;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //backgroundColor: _color,
          title: const Text('Renk Değiştirme Uygulaması'),
        ),
        body: Center(
          child: ChangeColor(
              color: _color,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      color: _color,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      child: const Text("Change Color"),
                      onPressed: () {
                        _changeColor();
                      },
                    )
                  ])),
        ));
  }
}
