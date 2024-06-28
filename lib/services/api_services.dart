import 'package:http/http.dart';
import 'package:http/http.dart 'as http;
class apiservices{
  Future<String?> apicalling()
  async {
    String? api='https://newsapi.org/v2/top-headlines/sources?apiKey=73d19ece7f5d4088b6f327b5498f9b1f';
    Response response = await http.get(Uri.parse(api));

    if(response.statusCode == 200)
      {
        return response.body;

      }
    return null;
  }
}