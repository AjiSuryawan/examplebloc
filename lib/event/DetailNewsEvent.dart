import 'package:equatable/equatable.dart';

abstract class DetailInformationEvent extends Equatable {
  const DetailInformationEvent();

  @override
  List<Object> get props => [];
}

class GetDetailInformation extends DetailInformationEvent {
  final int id;

  GetDetailInformation({required this.id});
}
