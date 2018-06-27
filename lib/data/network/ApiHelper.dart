import 'dart:async';

import 'package:http/http.dart' as http;

class ApiHelper {


  Future fetchtext() async {
    var response =
        await http.post("https://www.reweyou.in/fasalapp/fetchtext.php");
    return response;
  }
}
