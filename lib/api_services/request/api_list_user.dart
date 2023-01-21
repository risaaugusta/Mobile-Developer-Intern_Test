part of '../../pages.dart';

class ApiServices{
  final String apiUrl = "https://reqres.in/api/users?per_page=9&page=1";
  final String apiUrl2 = "https://reqres.in/api/users?per_page=8&page=2";

  Future<List<dynamic>> _fecthDataUsers() async {
    var result = await http.get(Uri.parse(apiUrl));
    return json.decode(result.body)['data'];
  }

  Future<List<dynamic>> _fetchDataPage2() async {
    var result = await http.get(Uri.parse(apiUrl2));
    return json.decode(result.body)['data'];
  }
}
