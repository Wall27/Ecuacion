import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
final r = TextEditingController();
const double pi = 3.1415926535897932;
const d = (4/3); 
double resul = 0;

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formula',
      home: MyCustomForm(),
    );
  }
}
class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  get fieldText => null;

  @override
  void resultado() {
    resul = ((d)*(pi)*(double.parse(r.text)*double.parse(r.text)*double.parse(r.text)));
          showDialog(context: context, builder: (context){
            return  AlertDialog(
              title: Text(""),
              content: Text("Resultado: $resul"),
            );
          });
}
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculando la formula A=4/3πr^3'),
      ),
      body:Padding(
        
        padding: const EdgeInsets.all(20),
        child: Column(
          
          children:[
            
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ingresa el valor r'
              ),
              controller:r, 
              keyboardType: TextInputType.number,
            ),
          ],
            
          ),
      ),
      
    floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          
          resultado();
          r.clear();
        },
        label: const Text('Calcular'),
        backgroundColor: Colors.indigoAccent,
      ),
  );
  }
}