import 'dart:convert';
import 'package:http/http.dart' as http;

class Networking {
  Future<List> fetchData(String url) async {
    final responsee = await http.get(
      Uri.parse(url),
    );
    if (responsee.statusCode == 200) {
      return jsonDecode(responsee.body) as List;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
