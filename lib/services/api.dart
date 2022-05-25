import 'dart:convert';
import 'package:http/http.dart';

class Apicalls {
  Future getitemsPrime() async {
    List items = [];
    String url = "http://localhost:8090/primes";
    final response = await get(Uri.http("localhost:8090", "/primes"));
    var result = jsonDecode(response.body);
    result.numbers.forEach((element) {
      items.add(element);
    });
    return items;
  }

  Future getitemsFibo() async {
    List items = [];
    // String url = "http://localhost:8090/fibo";
    final response = await get(Uri.http("localhost:8090", "/fibo"));
    var result = jsonDecode(response.body);
    result.numbers.forEach((element) {
      items.add(element);
    });
    return items;
  }

  Future getitemsOdd() async {
    List items = [];
    // String url = "http://localhost:8090/fibo";
    final response = await get(Uri.http("localhost:8090", "/odd"));
    var result = jsonDecode(response.body);
    result.numbers.forEach((element) {
      items.add(element);
    });
    return items;
  }

  Future getitemsEven() async {
    List items = [];
    // String url = "http://localhost:8090/fibo";
    final response = await get(Uri.http("localhost:8090", "/even"));
    var result = jsonDecode(response.body);
    result.numbers.forEach((element) {
      items.add(element);
    });
    return items;
  }
}
