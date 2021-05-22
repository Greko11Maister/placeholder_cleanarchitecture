


import 'package:placeholder_cleanarchitecture/features/data/models/geo_model.dart';
import 'package:placeholder_cleanarchitecture/features/domain/entities/address_entity.dart';

class AddressModel extends AddressEntity {
 AddressModel({
   String? street,
   String? suite,
   String? city,
   String? zipcode,
   GeoModel? geo,
}) : super (street: street, suite: suite, city: city, zipcode: zipcode , geo: geo );

 factory AddressModel.fromJson(Map<String ,dynamic>json ){
   return AddressModel(
       street: json["street"],
       suite: json["suite"],
       city: json["city"],
       zipcode: json["zipcode"],
       geo: GeoModel.fromJson(json["geo"])
   );



 }

}