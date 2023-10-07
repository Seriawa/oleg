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
  int carprice = 0;
  List<Cars> Yellow = data.cars;
  for(Cars car in Yellow){
    if(car.car_color == 'Yellow'){
      String carprice = car.price.substring(1);
      count ++; 
    }
  }  
  print(carprice/count);
}