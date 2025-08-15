import 'dart:convert';
import 'dart:io';

Future<Map<String, dynamic>> apiRequest(String endpoint) async {
  final url = Uri.parse(endpoint);

  final httpClient = HttpClient();
  try {
    final request = await httpClient.getUrl(url);

    final response = await request.close();

    final responseBody = await response.transform(utf8.decoder).join();

    final data = jsonDecode(responseBody);
    return data;
  } catch (e) {
    return {};
  } finally {
    httpClient.close();
  }
}
