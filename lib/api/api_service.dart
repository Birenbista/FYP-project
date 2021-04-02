import 'package:fyp_app/model/login_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class APIService {
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    String url = "https://192.168.1.67:44387/api/account/login";

    final response = await http.post(url, body: requestModel.toJson());
    if (response.statusCode == 200 || response.statusCode == 400) {
      print(response.body);

      return LoginResponseModel.fromJson(json.decode(json.decode(response.body)));
    } else {  
      throw Exception('failed to load data');
    }
  }
}
