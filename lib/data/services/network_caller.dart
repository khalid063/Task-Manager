import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart';
import 'package:task_manager/data/models/network_response.dart';

class NetworkCaller {
  Future<NetworkResponse> getRequest(String url) async{
    try{
      Response response = await get(Uri.parse(url));
      if (response.statusCode == 200) {
        return NetworkResponse(true, response.statusCode, jsonDecode(response.body));
        //decodedResponse = jsonDecode(response.body);
      } else {
        // todo - handle other response code - 401, 400, 500
        return NetworkResponse(false,response.statusCode, null);
      }
    } catch (e) {
      log(e.toString());
    }
    return NetworkResponse(false,-1, null);
  }

  Future<NetworkResponse> postRequest(String url, Map<String, dynamic> body) async{
    try{
      Response response = await post(Uri.parse(url), body: jsonEncode(body));
      if (response.statusCode == 200) {
        return NetworkResponse(true, response.statusCode, jsonDecode(response.body));
        //decodedResponse = jsonDecode(response.body);
      } else {
        // todo - handle other response code - 401, 400, 500
        return NetworkResponse(false,response.statusCode, null);
      }
    } catch (e) {
      log(e.toString());
    }
    return NetworkResponse(false,-1, null);
  }

}