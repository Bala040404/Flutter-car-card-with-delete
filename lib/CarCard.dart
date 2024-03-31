import 'package:flutter/material.dart';
import './Car.dart';

class Carcard extends StatelessWidget{
  Car car;
  Function delete;
  Carcard(this.car,this.delete);
  @override
  Widget build(BuildContext context){
    return Card(
      child: Column(
        children: [
          Text("${car.name}"),
          Text("${car.price}"),
          TextButton(onPressed: (){delete(car);}, child: Icon(Icons.delete))

        ],
      ),
    );
  }
}