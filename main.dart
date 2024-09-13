import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TextEditingController contVisor = TextEditingController();

  String resultado = '';

  void calcula(String val) {
    if (val.length > 0) {
      if (val == 'back') {
        if (resultado.length > 0)
          resultado = resultado.substring(0, resultado.length - 1);
      } else {
        resultado += val;
      }
      setState(() {
        contVisor.text = resultado;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 215, 231, 238),
            centerTitle: true,
            title: const Text(
              'Calculadora',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 34,
              ),
            )),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    textAlign: TextAlign.center,
                    // Ajuste do controlador
                    controller: contVisor,
                    enabled: false, // desabilita textfield
                    style: const TextStyle(
                        fontSize: 80), // aumento o tamanho do textfield
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 150,
                ),
                ElevatedButton(
                  onPressed: () {
                    calcula('7');
                  },
                  child: const Text('7', style: TextStyle(fontSize: 40)),
                ),
                const SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    calcula('8');
                  },
                  child: const Text('8', style: TextStyle(fontSize: 40)),
                ),
                const SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    calcula('9');
                  },
                  child: const Text('9', style: TextStyle(fontSize: 40)),
                ),
                const SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    calcula('/');
                  },
                  child: const Text('/', style: TextStyle(fontSize: 40)),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 150,
                ),
                ElevatedButton(
                  onPressed: () {
                    calcula('4');
                  },
                  child: const Text('4', style: TextStyle(fontSize: 40)),
                ),
                const SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    calcula('5');
                  },
                  child: const Text('5', style: TextStyle(fontSize: 40)),
                ),
                const SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    calcula('6');
                  },
                  child: const Text('6', style: TextStyle(fontSize: 40)),
                ),
                const SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    calcula('*');
                  },
                  child: const Text('*', style: TextStyle(fontSize: 40)),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 150,
                ),
                ElevatedButton(
                  onPressed: () {
                    calcula('1');
                  },
                  child: const Text('1', style: TextStyle(fontSize: 40)),
                ),
                const SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    calcula('2');
                  },
                  child: const Text('2', style: TextStyle(fontSize: 40)),
                ),
                const SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    calcula('3');
                  },
                  child: const Text('3', style: TextStyle(fontSize: 40)),
                ),
                const SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    calcula('-');
                  },
                  child: const Text('-', style: TextStyle(fontSize: 40)),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 150,
                ),
                ElevatedButton(
                  onPressed: () {
                    calcula('0');
                  },
                  child: const Text('0', style: TextStyle(fontSize: 40)),
                ),
                const SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    calcula('.');
                  },
                  child: const Text(',', style: TextStyle(fontSize: 40)),
                ),
                const SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    calcula('+');
                  },
                  child: const Text('+', style: TextStyle(fontSize: 40)),
                ),
                const SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    calcula('back');
                  },
                  child: const Text('<-', style: TextStyle(fontSize: 40)),
                ),
                const SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('=', style: TextStyle(fontSize: 40)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
