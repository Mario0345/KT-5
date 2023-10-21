import 'package:flutter/material.dart';

import '../models/cars/cars.dart';

class CarCards extends StatelessWidget {
final Cars car;
const CarCards({ super.key, required this.car });

  @override
    Widget build(BuildContext context) {
      return ListTile(
        
           
            title: Text(car.brand),
            subtitle: Text(car.brand_model),
            trailing: Text(car.price.toString())

          );
    
    }
}