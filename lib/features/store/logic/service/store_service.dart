import 'dart:convert';
import 'package:http/http.dart' as http;

class StoreApi {
  final _client = http.Client();

  //GET request
  getData({required String url, required Map<String, String> headers}) async {
    try {
      final response = await _client.get(
        Uri.parse(url),
        headers: headers,
      );
      return jsonDecode(response.body);
    } catch (e) {
      throw Exception(e);
    }
  }

}
