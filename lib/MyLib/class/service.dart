import 'package:flutter/material.dart';

class Service{
  var ServiceName;
  var ServiceImage;
  List<NetworkImage> ServiceSlideImage;
  var ServicePrice;
  var ServiceType;
  var ServiceDescription;
  var DiscountServicePrice;
  Service({required this.ServiceName, required this.ServiceImage, required this.ServiceSlideImage, required this.ServicePrice, required this.ServiceType,required this.ServiceDescription});
}