import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Animaciones implicitas",
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _mostrar1 = true;
  bool _mostrar2 = false;
  bool _mostrar3 = false;
  bool _mostrar4 = false;
  bool _mostrar5 = false;
  bool _mostrar6 = false;
  bool _condicion = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animaciones implicitas"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              const Text("AnimatedOpacity"),
              AnimatedOpacity(
                opacity: _mostrar1 ? 1 : 0,
                duration: const Duration(seconds: 1),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ),
              ElevatedButton(
                child: const Text("Animación opacidad"),
                onPressed: (){
                  setState(() {
                    _mostrar1 = !_mostrar1;
                  });
                },
              ),
              const SizedBox(height: 20,),
              const Text("AnimatedContainer"),
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                width: _mostrar3 ? 200 : 100,
                height: _mostrar3 ? 200 : 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(_mostrar4 ? 50 : 0),
                  color: _mostrar2 ? Colors.blue : Colors.red,
                ),
              ),
              ElevatedButton(
                child: const Text("Animación color"),
                onPressed: (){
                  setState(() {
                    _mostrar2 = !_mostrar2;
                  });
                },
              ),
              ElevatedButton(
                child: const Text("Animación Tamaño"),
                onPressed: (){
                  setState(() {
                    _mostrar3 = !_mostrar3;
                  });
                },
              ),
              ElevatedButton(
                child: const Text("Animación bordes"),
                onPressed: (){
                  setState(() {
                    _mostrar4 = !_mostrar4;
                  });
                },
              ),
              const SizedBox(height: 20,),
              AnimatedAlign(
                alignment: _mostrar5 ? Alignment.centerLeft : Alignment.centerRight,
                duration: const Duration(seconds: 1),
                curve: _condicion ? Curves.linear : Curves.bounceOut,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ),
              ElevatedButton(
                child: const Text("Animación alineación"),
                onPressed: (){
                  setState(() {
                    _mostrar5 = !_mostrar5;
                    _condicion = true;
                  });
                },
              ),
              ElevatedButton(
                child: const Text("Animación alineación con curva"),
                onPressed: (){
                  setState(() {
                    _mostrar6 = !_mostrar6;
                    _mostrar5 = !_mostrar5;
                    _condicion = false;
                  });
                },
              ),
            ],
          ),
        ),
      )
    );
  }
}
