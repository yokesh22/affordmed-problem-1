import 'package:affordmed/services/api.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List prime = [];
  List fibo = [];
  List odd = [];
  List even = [];
  List mer = [];
  var res;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getItemsfrom();
  }

  getItemsfrom() async {
    Apicalls apicalls = Apicalls();
    prime = await apicalls.getitemsPrime();
    fibo = await apicalls.getitemsFibo();
    odd = await apicalls.getitemsOdd();
    even = await apicalls.getitemsEven();
  }

  mergeList() {
    mer = prime + fibo + odd + even;
    mer.toSet().toList();
    mer.sort();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(mer.toString()),
      ),
    );
  }
}
