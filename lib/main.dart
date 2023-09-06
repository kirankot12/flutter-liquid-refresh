import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void> _refreshData() async{
  return await Future.delayed(Duration(seconds: 2));

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liquid Pull to refresh",
        style: TextStyle(
          fontWeight: FontWeight.bold
        )
      ),
      centerTitle: true,
      backgroundColor: Colors.blueGrey,
      elevation: 0,
      ),
      backgroundColor: Colors.blueGrey.shade200,
      body: LiquidPullToRefresh(
        onRefresh: _refreshData,
        backgroundColor: Colors.blueGrey.shade200,
        color: Colors.blueGrey,
        height: 200,
        child: ListView.separated(
          itemCount: 10,
          itemBuilder: (context, index) => Container(
            height: 150,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(15),
      
            ) ,
          ),
          separatorBuilder: (context, index) => SizedBox(height: 20),
          padding:  EdgeInsets.only(
            right: 20, left: 20, top: 20
      
          ),
        ),
      ),
    );
  }
}