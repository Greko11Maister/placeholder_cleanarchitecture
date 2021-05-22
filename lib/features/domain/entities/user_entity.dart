import 'package:equatable/equatable.dart';
import 'package:placeholder_cleanarchitecture/features/domain/entities/address_entity.dart';
import 'package:placeholder_cleanarchitecture/features/domain/entities/company_entity.dart';

// ignore: must_be_immutable
class UserEntity  extends Equatable {

  int? id;
  String? name;
  String? username;
  String? email;
  AddressEntity? address;
  String? phone;
  String? website;
  CompanyEntity? company;

  UserEntity({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    username,
    email,
    address,
    phone,
    website,
    company,
  ];


}