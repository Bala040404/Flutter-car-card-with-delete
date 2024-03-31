import 'package:carlist/CarCard.dart';
import 'package:flutter/material.dart';
import './Car.dart';

void main(){
  runApp(Myapp());
}


class Myapp extends StatefulWidget{
  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  List<Car> c = [new Car(25000, "Lancia o34"),new Car(15000,"ferrari f12")];

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: c.map((e) => new Carcard(e,
                    (Car cr){
                    setState(() {

                      c.remove(cr);
                    });
            })).toList(),
          ),
        ),
      ),
    );
  }
}



