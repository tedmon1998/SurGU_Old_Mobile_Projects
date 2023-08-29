import 'dart:io';

class ApiClient {
  final client = HttpClient();

  Future getWriting() async {
    final url = Uri.parse('http://10.168.25.159:5004/api/schedule');
    final request = await client.getUrl(url);
    final responce = await request.close();

    responce.listen((event) {
      print('1');
      print(event);
    });

    // final jsonStrings = await responce.transform(utf8.decoder).toList();
    // final jsonString = jsonStrings.join();
    // final json = jsonDecode(jsonString) as List<dynamic>;
    // final writing = json
    //     .map((dynamic e) => Writing.fromJson(e as Map<String, dynamic>))
    //     .toList();

    // return writing;
  }
}
//Future<List<Writing>>