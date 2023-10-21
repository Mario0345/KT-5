import 'package:flutter/material.dart';

import '../models/cars/cars.dart';

class CarCards extends StatelessWidget {
final Cars car;
final int index;
const CarCards({ super.key, required this.car,required this.index });

  @override
    Widget build(BuildContext context) {
      return Card(
        color: Color.fromARGB(255, 243, 243, 196),
        margin: EdgeInsets.symmetric(vertical: 10),
        elevation: 5,
        child: ListTile(
            
              leading: Text(index.toString()),
              title: Text(car.brand),
              
              subtitle: Row(
                children: [
                  Text(car.brand_model),
                    Container(
                      width: 50,
                      height: 40,
                      decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('lib/images/icon_car.png'),),
                ),
                  ),
                  Text("Available? " +car.availability.toString()),
                  SizedBox(
                    width: 25,
                  ),
                  
                ],
              ), 
              trailing: Column(
                children: [
                  Text('Color: '+car.car_color),
                  Text("Price: "+car.price.toString()),
                ],
              )
      
            ),
      );
    
    }
}