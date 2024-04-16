import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tarefas'),
        ),
        body: const Column(
          children: [
            task('Lavar roupa todo sábado'),
            task('Lavar roupa todo sábado'),
            task('Lavar roupa todo sábado')
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){

          },
        ),
      ),
    );
  }
}

class task extends StatelessWidget {

  final String nome;
  const task(this.nome,{super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              color: Colors.blue, width: double.maxFinite,height: 140,
            ),
            Column(
              children: [
                Container(
                    color: Colors.white,width: double.maxFinite,height: 100,child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 72,
                      height: double.maxFinite,
                      color: Colors.black26,
                    ),
                    Container(
                      width: 200,
                      child: Text(
                          this.nome, style: TextStyle(fontSize: 24, overflow: TextOverflow.ellipsis),
                      ),
                    ),
                    ElevatedButton(onPressed: () {}, child: Icon(Icons.arrow_drop_up))
                  ],
                )
                ),
                const Text('Nível: 0', style: TextStyle(color: Colors.amber, fontSize: 16))
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}

