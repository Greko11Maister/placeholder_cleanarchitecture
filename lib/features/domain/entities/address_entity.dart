

import 'package:equatable/equatable.dart';
import 'package:placeholder_cleanarchitecture/features/domain/entities/geo_entity.dart';

class AddressEntity extends Equatable{
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  GeoEntity? geo;

  AddressEntity({this.street, this.suite, this.city, this.zipcode, this.geo});

  @override
  List<Object?> get props => [this.street, this.suite, this.city, this.zipcode, this.geo];

}