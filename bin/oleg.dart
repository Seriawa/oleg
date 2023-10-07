import 'package:oleg/oleg.dart' as oleg;
import 'package:dio/dio.dart';
import 'models/cars/cars/cars.dart';
import 'models/cars/carsmodel/carsmodel.dart';

void main(List<String> arguments) async {
  Dio httpClient = Dio();
  String url = "https://myfakeapi.com/api/cars/";
  var response = await httpClient.get(url);
  Carsmodel carsmodel = Carsmodel.fromJson(response.data);

  int count = 0;
  int price = 0;
  double pisun = 0;
  for(var car in carsmodel.cars){
    if(car.car_color == 'Yellow'){
      String price = car.price.substring(1);
      double priceend = double.parse(price);
      count ++; 
      pisun += priceend;
    }
    double end = pisun/count;
    print(end);
  }  
}