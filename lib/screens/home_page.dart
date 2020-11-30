import 'package:FlutterBloc/blocs/home_bloc.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeBloc _homeBloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Text"),
              onChanged: _homeBloc.setText,
            ),
            SizedBox(
              height: 15,
            ),
            StreamBuilder(
              stream: _homeBloc.output,
              builder: (context, snapshot) {
                return Text(_homeBloc.text ?? "");
              },
            ),
          ],
        ),
      ),
    );
  }
}
