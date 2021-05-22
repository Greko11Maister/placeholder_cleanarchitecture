
import 'package:placeholder_cleanarchitecture/features/domain/entities/geo_entity.dart';

class GeoModel extends GeoEntity {
  GeoModel({
    String? lat,
    String? lng,
}) : super (lat: lat , lng: lng);
  factory GeoModel.fromJson(Map<String, dynamic>json){
    return GeoModel(
        lat: json["lat"],
        lng: json["lng"]);
  }

}