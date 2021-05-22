

import 'package:equatable/equatable.dart';

class GeoEntity extends Equatable{
  String? lat;
  String?lng;


  GeoEntity({this.lat, this.lng
  });

  @override
  List<Object?> get props => [lat, lng];

}