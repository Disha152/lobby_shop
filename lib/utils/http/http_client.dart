import 'dart:convert';
import 'package:http/http.dart' as http;


class CustomHttpClient {
  //Base URL
static const String _baseUrl = 'https://api.example.com';

//Helper method to make a get request.
 Future<Map<String, dynamic>?> getRequest(String url) async {
  final response = await http.get(Uri.parse('$_baseUrl/$url'));
  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    return null;
  }
 }

  //helper method to make a post request.
  Future<Map<String, dynamic>?> postRequest(String url, Map<String, dynamic> body) async {
    final response = await http.post(Uri.parse('$_baseUrl/$url'), body: body);
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      return null;
    }
  }
  
  //helper method to make a put request.
  Future<Map<String, dynamic>?> putRequest(String url, Map<String, dynamic> body) async {
    final response = await http.put(Uri.parse('$_baseUrl/$url'), body: body);
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      return null;
    }
  }
  
  //helper method to make a delete request.
  Future<Map<String, dynamic>?> deleteRequest(String url) async {
    final response = await http.delete(Uri.parse('$_baseUrl/$url'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      return null;
    }
  }

  //Handle the HTTP response
  static Map<String,dynamic> _handleResponse(http.Response response){
    if(response.statusCode == 200){
      return json.decode(response.body);
    }else{
      throw Exception('Failed to load data');
    }
  }

  
}
