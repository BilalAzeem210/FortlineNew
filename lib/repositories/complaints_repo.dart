import 'dart:convert';

import '../models/complaints_model.dart';
import 'package:http/http.dart' as http;

class ComplaintsRepo{

  Future<ComplaintsModel> fetchAllComplaints() async{
    String url = "http://sc9.indus-erp.com:1251/ords/fortline/reg/getCmplaintAPI";
    var response = await http.get(Uri.parse(url));
    if(response.statusCode == 200){
      return ComplaintsModel.fromJson(jsonDecode(response.body));
    }
    throw Exception("error");
  }
}