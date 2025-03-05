import 'package:flutter/material.dart';
import 'package:rentify/data/models/car.dart' show Car;

class CarCard extends StatelessWidget {
  final Car car;

  const CarCard({super.key, required this.car}); 

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xffF3F3F3),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ]
      ),
      child: Column(
        children: [
          Image.asset('assets/onboard1.png', height: 120),
          Text(car.model, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          SizedBox(height: 10),
          Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/gps.png', height: 10,),
                      Text(' ${car.distance.toStringAsFixed(0)}km  '),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/gas.png', height: 10,),
                      Text(' ${car.fuelCapacity.toStringAsFixed(0)}L'),
                    ],
                  ),
                ],
              ),
               Text(
                '                              \$${car.pricePerHour.toStringAsFixed(2)}/hour',
                style: TextStyle(fontSize: 16),
                ),
            ],
          ),
         
        ],
      ),
    );
  }
}
