import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;

import '../event/DetailNewsEvent.dart';
import '../model/DetailInformationModel.dart';
import '../state/DetailInformationState.dart';

class DetailInformationBloc extends Bloc<DetailInformationEvent, DetailInfomationState> {
  DetailInformationBloc() : super(DetailInformationInitial());

  @override
  Stream<DetailInfomationState> mapEventToState(DetailInformationEvent event) async* {
    if (event is GetDetailInformation) {
      yield* mapEventToGetDetailInformation(event.id);
    }
  }

  Stream<DetailInfomationState> mapEventToGetDetailInformation(int id) async* {
    yield DetailInformationInitial();
    Map<String, String> headers = {
      'Accept': 'application/json',
      'Authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMTc0NzFmYTI5MGQ4MTZjMDA1YzI3NWYwNmJiMTgwN2YxZTIzYjM0ZDZhN2Q2M2E1YzllNDM1YWE5NDdjNDBmMWRjNWE4NGUwZWRiNmRmZWYiLCJpYXQiOjE2ODYyMjUzMjEuMTQzODM3LCJuYmYiOjE2ODYyMjUzMjEuMTQzODQzLCJleHAiOjE3MTc4NDc3MjEuMTM4MzgzLCJzdWIiOiIxOSIsInNjb3BlcyI6W119.mF6J3Y3VDveET_FU1kFUmgr9IJpflUCe0pjyLpRecA0HpWWtriWUnoMrmhsCzQ2EevL4wzNt038slOGyLY8ZuuFrww-lq0CcXKTBFPsO6TOXFWXqGQ6DuELvnYDjo1T0YR8PD56uy1UyNv4ZuWrGJ585_N3wqweHLz8G0kErKFmnlSLCZ_U136ZFVrHRtkYCApzHJMgBfmc4Z-7UdliLXqC0ytandcj20uyCkvgKcvUpnKh9Tk0sPW6Chno2ZChL9vkBWzuJbSoTfuJF-hLpMmtL1UHaRcWuLYz8RmsUSFju5H1kCRVzOteavikXIzv_4fM6jaI-7khfAgnINfedPcyk7w_0kxQSRqwws-2XthjaljA52lb-JFCY5PDue35YGJ08b3wRGNAYHfXivnP8cyMLcO005mZetAj2GYEnoUBjonGHYasuMZ48v1YHO9pqALPWMRSFzwMaxPA1Pox_uny-99BdcFtkSR2PvmdSPEGSmzEHNm3ga-eVQPify5WGaRbtJkh6uiphhja22HZdwSTNyIXuK5H_CNX_UOpzcxSorSHsiVKlBTMZl0DHnvq8NNZom7V_H2VXl1IZFPXyCSIrGdsxRqvy3796GqnWwMRyzjWMXz6stT8KPwljBVJX9YJ_edu1cWO_k7Y_95PrbTdIoi6gVaOBbB8OqZ-EWeY",
    };
    try {
      final res = await http.get(Uri.parse("https://oforu.talenavi.com/api/informations/$id"), headers: headers);
      print(res.statusCode);
      print(res.body.toString());
      DetailInformation movieModel;
      if (res.statusCode == 200) {
        movieModel = DetailInformation.fromJson(json.decode(res.body.toString()));
        movieModel.message = "sukses";
        yield OnDetailInformationState(detailInformationCopyWith: movieModel);
      }
    } catch (e) {}
  }
}
