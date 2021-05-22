import 'package:placeholder_cleanarchitecture/features/domain/entities/user_entity.dart';

// ignore: must_be_immutable
class UserModel extends UserEntity {
  UserModel({
    int? id,
    String? name,
    String? username,
    String? email,
    AddressModel? address,
    String? phone,
    String? website,
    CompanyModel? company,
  }) : super(id: id, name: name, email: email, address: address, phone: phone, website: website, company: company);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        address: AddressModel.fromJson(json["address"]),
        phone: json["phone"],
        website: json["website"],
        company: CompanyModel.fromJson(json["company"])
    );
  }
}
