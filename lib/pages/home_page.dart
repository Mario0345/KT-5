import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../models/cars/cars.dart';
import '../models/car_resp/car_resp.dart';
import '../widgets/car_cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Dio client = Dio();
  var url = "https://myfakeapi.com/api/cars";
  List<Cars> carList = [];

  void GetNetdata() async {

    var response =await client.get(url);
    carList = CarResp.fromJson(response.data).cars;
    // print(carList);
    setState(() {});
  }
  @override
  void initState(){
    GetNetdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        Center(
          
          child: Container(
            
            width: 500,
            child: ListView.builder(
  
              itemCount: carList.length,
              itemBuilder: (context, index) {
              
              return CarCards(car: carList[index], index: index+1,);
            },
            ),
          ),
        ),
      
    );
  }


  
  




}