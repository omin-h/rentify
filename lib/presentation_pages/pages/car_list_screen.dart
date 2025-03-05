import 'package:flutter/material.dart';
import 'package:rentify/data/models/car.dart';
import 'package:rentify/presentation_pages/widgets/car_card.dart';

class CarListScreen extends StatelessWidget {
  final List<Car> cars= [
    Car(model: 'Lamborghini Huracan', distance: 100, fuelCapacity: 50, pricePerHour: 300),
    Car(model: 'Ferrari 458', distance: 200, fuelCapacity: 60, pricePerHour: 350),
    Car(model: 'Mclaren 720s', distance: 300, fuelCapacity: 70, pricePerHour: 400),
    Car(model: 'Aston Martin Vantage', distance: 400, fuelCapacity: 80, pricePerHour: 250),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return CarCard(car: cars[index]);
        },
        ),
    );
  }
}