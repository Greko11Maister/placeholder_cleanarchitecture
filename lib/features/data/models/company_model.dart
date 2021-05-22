

import 'package:placeholder_cleanarchitecture/features/domain/entities/company_entity.dart';

class CompanyModel extends CompanyEntity {
  CompanyModel({
    String? name,
    String? catchPhrase,
    String? bs,
}) : super (name: name, catchPhrase: catchPhrase, bs:bs);


  factory CompanyModel.fromJson(Map<String, dynamic> json){
    return CompanyModel(
        name: json["name"],
        catchPhrase: json["catchPhrase"],
        bs: json["bs"]);
  }

}