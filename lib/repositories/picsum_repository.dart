import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../models/picsum_image.dart';

class PicsumRepository {
  final http.Client client;
  PicsumRepository({http.Client? client}) : client = client ?? http.Client();

  Future<List<PicsumImage>> fetchTenImages() async {
    try {
      print('🌐 Attempting to fetch images from picsum.photos...');
      final uri = Uri.parse('https://picsum.photos/v2/list?limit=10');
      print('🔗 URL: $uri');
      
      final res = await client.get(
        uri,
        headers: {
          'User-Agent': 'Flutter App',
          'Accept': 'application/json',
        },
      ).timeout(const Duration(seconds: 15));
      
      print('📡 Response status: ${res.statusCode}');
      print('📄 Response headers: ${res.headers}');
      
      if (res.statusCode != 200) {
        throw Exception('Server returned status code: ${res.statusCode}. Response: ${res.body}');
      }
      
      final List data = json.decode(res.body);
      print('✅ Successfully parsed ${data.length} images');
      return data.map((e) => PicsumImage.fromJson(e)).toList();
    } on SocketException catch (e) {
      print('❌ SocketException: $e');
      throw Exception('Network connection failed. Please check your internet connection and try again.');
    } on HttpException catch (e) {
      print('❌ HttpException: $e');
      throw Exception('HTTP error occurred. Please try again later.');
    } on FormatException catch (e) {
      print('❌ FormatException: $e');
      throw Exception('Invalid response format from server.');
    } catch (e) {
      print('❌ General Exception: $e');
      if (e.toString().contains('Failed host lookup')) {
        throw Exception('Cannot resolve picsum.photos. Please check your DNS settings or try again later.');
      }
      if (e.toString().contains('Connection timed out')) {
        throw Exception('Connection timed out. Please check your internet connection.');
      }
      throw Exception('Network error: ${e.toString()}');
    }
  }

  // Fallback method with mock data for offline testing
  Future<List<PicsumImage>> getMockImages() async {
    print('📱 Loading mock images...');
    return [
      PicsumImage(
        id: '1',
        author: 'John Doe',
        width: 400,
        height: 300,
        downloadUrl: 'https://picsum.photos/400/300?random=1',
      ),
      PicsumImage(
        id: '2',
        author: 'Jane Smith',
        width: 400,
        height: 400,
        downloadUrl: 'https://picsum.photos/400/400?random=2',
      ),
      PicsumImage(
        id: '3',
        author: 'Mike Johnson',
        width: 400,
        height: 250,
        downloadUrl: 'https://picsum.photos/400/250?random=3',
      ),
      PicsumImage(
        id: '4',
        author: 'Sarah Wilson',
        width: 400,
        height: 350,
        downloadUrl: 'https://picsum.photos/400/350?random=4',
      ),
      PicsumImage(
        id: '5',
        author: 'David Brown',
        width: 400,
        height: 280,
        downloadUrl: 'https://picsum.photos/400/280?random=5',
      ),
    ];
  }
}
