
import 'package:equatable/equatable.dart';

class CompanyEntity extends Equatable {
  String? name;
  String? catchPhrase;
  String? bs;

  CompanyEntity({this.name, this.catchPhrase, this.bs});

  @override
  List<Object?> get props => [this.name, this.catchPhrase, this.bs];

}