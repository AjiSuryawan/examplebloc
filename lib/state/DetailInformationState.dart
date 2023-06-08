

import '../model/DetailInformationModel.dart';

abstract class DetailInfomationState {
  final DetailInformation detailInformtaionGlobal;

  DetailInfomationState({required this.detailInformtaionGlobal});
}

class DetailInformationInitial implements DetailInfomationState {
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class OnDetailInformationState extends DetailInfomationState {
  DetailInformation detailInformationCopyWith;

  OnDetailInformationState({
    required this.detailInformationCopyWith,
  }) : super(detailInformtaionGlobal: detailInformationCopyWith);

  OnDetailInformationState copyWith({required final DetailInformation announcementModel}) {
    return OnDetailInformationState(
      detailInformationCopyWith: announcementModel ?? this.detailInformationCopyWith,
    );
  }
}
