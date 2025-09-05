import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart' as html_parser;
import 'package:http/http.dart' as http;
import 'dart:async';

final nameProvider = StateNotifierProvider<Filtered,String>((ref) {
  return Filtered();
});

class Filtered extends StateNotifier<String> {
  Filtered() : super("");

  void filter(String name) {
    name.trimRight();
    name.trimLeft();
    name.replaceAll(' ', '-');
  }
}

// Make it a family so it can take Bioparam
final futureProviders = FutureProvider.family<String, String>((
  ref,
  params,
) async {
  try {
    final name = ref.watch(nameProvider);
    final url = Uri.parse('https://www.britannica.com/biography/$name');
    final response = await http
        .get(url)
        .timeout(const Duration(seconds: 5)); // 5-second timeout

    if (response.statusCode != 200) {
      throw Exception("Failed to load. Status code: ${response.statusCode}");
    }

    Document document = html_parser.parse(response.body);
    return document.querySelector('h1')?.text ?? "No paragraph found";
  } on TimeoutException {
    throw Exception("Request timed out after 5 seconds");
  } catch (e) {
    throw Exception("Error: $e");
  }
});
