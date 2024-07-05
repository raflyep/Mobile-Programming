import 'dart:convert';
import 'package:http/http.dart' as http;
import 'crypto_model.dart';

class ApiService {
  final String apiUrl = "https://api.coinlore.net/api/tickers/";

  Future<List<Crypto>> fetchCryptos() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body)['data'];
      return data.map((crypto) => Crypto.fromJson(crypto)).toList();
    } else {
      throw Exception('Failed to load cryptos');
    }
  }
}
