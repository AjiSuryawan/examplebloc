import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/DetailInformationBloc.dart';
import '../event/DetailNewsEvent.dart';
import '../state/DetailInformationState.dart';

class ListViewData extends StatefulWidget {
  const ListViewData({Key? key}) : super(key: key);

  @override
  State<ListViewData> createState() => _ListViewDataState();
}

class _ListViewDataState extends State<ListViewData> {
  late DetailInformationBloc informationBloc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data"),),
      body: BlocProvider(
          create: (context) => DetailInformationBloc()..add(GetDetailInformation(id: 61)),
          child: BlocBuilder<DetailInformationBloc, DetailInfomationState>(builder: (context, state) {
            informationBloc = BlocProvider.of<DetailInformationBloc>(context);

            if (state is OnDetailInformationState) {
              return state.detailInformationCopyWith.message == "sukses"
                  ? Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(state.detailInformationCopyWith.data!.title.toString())
                      ],
                    ),
                  ))
                  : Center(
                child: Container(
                  margin: new EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.2, right: MediaQuery.of(context).size.width * 0.2),
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(
                            Icons.error_sharp,
                            color: Colors.red,
                          ),
                          title: Text('Error'),
                          subtitle: Text('Load Page Error'),
                        ),
                        ButtonBar(
                          children: <Widget>[
                            TextButton(
                              child: const Text('OKE'),
                              onPressed: () async {

                                },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            } else {
              print("proses");
              return Center(child: CircularProgressIndicator());
            }
          })),
    );
  }
}
