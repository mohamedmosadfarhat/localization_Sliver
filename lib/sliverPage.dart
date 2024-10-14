import 'package:flutter/material.dart';

class SliverPage extends StatefulWidget {
  const SliverPage({Key? key}) : super(key: key);

  @override
  _SliverpageState createState() => _SliverpageState();
}

class _SliverpageState extends State<SliverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.amber,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("data"),
              centerTitle: true,
            ),
          ),
          // SliverFillRemaining(
          //   child: Text("Hellow world"),
          // ),
///////////////
          // SliverList(
          //     delegate:
          //         SliverChildBuilderDelegate(childCount: 49, (context, index) {
          //   return Text("data");
          // }))
          ////////////////////
          SliverGrid(
              delegate:
                  SliverChildBuilderDelegate(childCount: 30, (cxt, index) {
                return Image.asset("images/c.png");
              }),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .98,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 4))
        ],
      ),
    );
  }
}
